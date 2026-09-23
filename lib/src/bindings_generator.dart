/// Tools for generating Dart FFI bindings from Zig source.
///
/// Configure generation with [ZigBindingsOptions] and use
/// [generateBindings] or [generateBindingsSource] to create bindings.
library;

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:logging/logging.dart';
import 'package:path/path.dart' as path;

part 'generator/package_helpers.dart';
part 'generator/bindings_models.dart';
part 'generator/primitive_types.dart';
part 'generator/dart_binding_emitter.dart';

/// Configuration for generating Dart FFI bindings from a Zig package.
final class ZigBindingsOptions {
  /// Creates a bindings generation request.
  const new({
    required this.packageRoot,
    required this.output,
    this.zigDirectory,
    this.rootSourceFile,
    this.assetId,
    this.target,
    this.sysroot,
    this.linkLibc,
    this.watch = false,
  });

  /// Package root used for path resolution and asset ID inference.
  final String packageRoot;

  /// Output Dart file path, absolute or relative to [packageRoot].
  final String output;

  /// Optional Zig project directory, absolute or relative to [packageRoot].
  final String? zigDirectory;

  /// Optional Zig root source file, absolute or relative to [zigDirectory].
  final String? rootSourceFile;

  /// Optional override for the generated `@DefaultAsset(...)` import ID.
  final String? assetId;

  /// Optional Zig target triple used when translating imported C declarations.
  final String? target;

  /// Optional target C system root used when translating imported C headers.
  final String? sysroot;

  /// Whether C translation should enable libc headers.
  ///
  /// When omitted, evaluates `build.zig` and compiles a probe of
  /// `@import("builtin").link_libc` with the selected module's configuration.
  /// Defaults to false when there is no build file. An explicit value skips
  /// the probe.
  final bool? linkLibc;

  /// Whether to keep watching the Zig directory and regenerate on changes.
  final bool watch;
}

/// In-memory result of generating Dart bindings for a Zig package.
final class GeneratedBindingsResult {
  /// Creates a generated bindings result.
  const new({
    required this.rootSourceFilePath,
    required this.outputPath,
    required this.assetId,
    required this.source,
    required this.dependencies,
    required this.functionCount,
    required this.globalCount,
    required this.reachableTypeCount,
  });

  /// Canonical path to the resolved Zig root source file.
  final String rootSourceFilePath;

  /// Resolved output path for the generated Dart file.
  final String outputPath;

  /// Asset ID embedded into the generated bindings.
  final String assetId;

  /// Generated Dart source code.
  final String source;

  /// Zig source files that influenced the generated output.
  final List<String> dependencies;

  /// Number of exported functions discovered.
  final int functionCount;

  /// Number of exported globals discovered.
  final int globalCount;

  /// Number of reachable ABI types rendered into Dart.
  final int reachableTypeCount;
}

/// Generates bindings once for the supplied Zig package.
Future<void> generateBindings(
  ZigBindingsOptions options, {
  Logger? logger,
}) async {
  logger ??= _createLogger();
  var result = await generateBindingsSource(options, logger: logger);
  var outputFile = File(result.outputPath);
  await outputFile.parent.create(recursive: true);
  await outputFile.writeAsString(result.source);

  stdout
    ..writeln(
      'Generating bindings for '
      '${result.functionCount} function(s), '
      '${result.globalCount} global(s), and '
      '${result.reachableTypeCount} ABI type(s)...',
    )
    ..writeln('Wrote ${result.outputPath}');
}

/// Regenerates bindings whenever files under the Zig directory change.
Future<void> watchBindings(
  ZigBindingsOptions options, {
  Logger? logger,
  Duration pollInterval = const Duration(seconds: 1),
}) async {
  logger ??= _createLogger();

  var zigDirectory = _resolveZigDirectory(options);
  var lastFingerprint = _directoryFingerprint(zigDirectory);

  await generateBindings(options, logger: logger);
  stdout.writeln('Watching ${zigDirectory.path} for Zig binding changes...');

  while (true) {
    await Future<void>.delayed(pollInterval);

    var currentFingerprint = _directoryFingerprint(zigDirectory);
    if (currentFingerprint == lastFingerprint) {
      continue;
    }

    lastFingerprint = currentFingerprint;
    stdout.writeln('Change detected; regenerating bindings...');

    try {
      await generateBindings(options, logger: logger);
    } on Object catch (error, stackTrace) {
      stderr
        ..writeln(error)
        ..writeln(stackTrace);
    }
  }
}

/// Generates bindings and returns the rendered source plus dependency metadata.
Future<GeneratedBindingsResult> generateBindingsSource(
  ZigBindingsOptions options, {
  Logger? logger,
}) async {
  logger ??= _createLogger();
  var packageRoot = path.normalize(path.absolute(options.packageRoot));
  var zigDirectory = _resolveZigDirectory(options);
  var rootSourceFile = _resolveRootSourceFile(
    zigDirectory: zigDirectory,
    rootSourceFile: options.rootSourceFile,
  );
  var outputPath = _resolveOutputPath(
    packageRoot: packageRoot,
    output: options.output,
  );

  logger.info('Extracting bindings metadata from ${rootSourceFile.path}.');
  var api = await _extractApiDescription(
    rootSourceFile,
    target: options.target,
    sysroot: options.sysroot,
    linkLibc:
        options.linkLibc ??
        await _detectLinkLibc(
          zigDirectory,
          rootSourceFile,
          target: options.target,
          sysroot: options.sysroot,
        ),
  );

  if (api.functions.isEmpty && api.globals.isEmpty) {
    throw StateError(
      'No exported Zig declarations were discovered in ${rootSourceFile.path}. '
      'Expected `export fn` or exported globals in the root source file.',
    );
  }

  var assetId =
      options.assetId ??
      _defaultAssetId(packageRoot: packageRoot, outputPath: outputPath);

  var source = DartBindingEmitter(api: api, assetId: assetId).render();
  return GeneratedBindingsResult(
    rootSourceFilePath: rootSourceFile.path,
    outputPath: outputPath,
    assetId: assetId,
    source: source,
    dependencies: api.dependencies,
    functionCount: api.functions.length,
    globalCount: api.globals.length,
    reachableTypeCount: api.reachableTypes.length,
  );
}

Future<ZigApiDescription> _extractApiDescription(
  File rootSourceFile, {
  String? target,
  String? sysroot,
  required bool linkLibc,
}) async {
  var helperScriptPath = await _helperScriptPath();
  var metadataJson = await _runProcess(
    'zig',
    ['run', helperScriptPath],
    environment: {
      ...Platform.environment,
      'NATIVE_TOOLCHAIN_ZIG_ROOT_SOURCE_FILE': rootSourceFile.path,
      'NATIVE_TOOLCHAIN_ZIG_TARGET': ?target,
      'NATIVE_TOOLCHAIN_ZIG_SYSROOT': ?sysroot,
      'NATIVE_TOOLCHAIN_ZIG_LINK_LIBC': '$linkLibc',
    },
  );

  var decoded = jsonDecode(metadataJson);
  if (decoded is! Map<String, Object?>) {
    throw StateError(
      'Expected Zig metadata extractor to return a JSON object.',
    );
  }

  return ZigApiDescription.fromJson(decoded);
}
