import 'dart:io';

import 'package:hooks/hooks.dart';
import 'package:native_toolchain_zig/src/zon_parser.dart';
import 'package:path/path.dart' as path;

/// Resolved Zig project metadata used by [ZigBuilder].
final class ZigProject {
  const ZigProject({
    required this.directory,
    required this.buildZig,
    required this.buildZigZon,
    required this.manifest,
    required this.name,
  });

  /// Zig project directory.
  final Directory directory;

  /// `build.zig` file in [directory].
  final File buildZig;

  /// Optional `build.zig.zon` file in [directory].
  final File? buildZigZon;

  /// Parsed `build.zig.zon`, if present.
  final Object? manifest;

  /// Library/package name from `build.zig.zon`, if present.
  final String? name;
}

/// Resolves and validates a Zig project directory.
ZigProject resolveZigProject({
  required String packageRoot,
  required String? zigDir,
}) {
  Directory directory = _resolveZigDirectory(
    packageRoot: packageRoot,
    zigDir: zigDir,
  );
  File buildZig = File(path.join(directory.path, 'build.zig'));

  if (!buildZig.existsSync()) {
    throw BuildError(
      message:
          'build.zig not found in ${directory.path}.\n'
          'Create a build.zig file for your Zig project.',
    );
  }

  File buildZigZon = File(path.join(directory.path, 'build.zig.zon'));
  Object? manifest = buildZigZon.existsSync()
      ? parseZon(buildZigZon.readAsStringSync())
      : null;

  return ZigProject(
    directory: directory,
    buildZig: buildZig,
    buildZigZon: buildZigZon.existsSync() ? buildZigZon : null,
    manifest: manifest,
    name: libraryNameFromZon(manifest),
  );
}

Directory _resolveZigDirectory({
  required String packageRoot,
  required String? zigDir,
}) {
  if (zigDir != null) {
    Directory directory = Directory(path.join(packageRoot, zigDir));
    if (!directory.existsSync()) {
      throw BuildError(message: 'Zig directory not found: ${directory.path}.');
    }
    return directory;
  }

  for (String candidate in const <String>['zig', 'native', 'src']) {
    Directory directory = Directory(path.join(packageRoot, candidate));
    if (directory.existsSync()) {
      return directory;
    }
  }

  throw BuildError(
    message:
        'Zig directory not found under $packageRoot.\n'
        'Looked for zig/, native/, and src/. Pass zigDir explicitly if your '
        'Zig project uses a different location.',
  );
}

/// Returns the package/library name declared in a parsed `build.zig.zon`.
String? libraryNameFromZon(Object? zon) {
  if (zon case {'name': String name} when name.trim().isNotEmpty) {
    return name.trim();
  }

  return null;
}
