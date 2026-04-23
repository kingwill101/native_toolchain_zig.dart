import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:native_toolchain_zig/src/target.dart';
import 'package:path/path.dart' as path;

/// Creates environment variables used by `zig build`.
Map<String, String> buildEnvironment({
  required CodeConfig codeConfig,
  required Target target,
}) {
  return <String, String>{
    if (Platform.isMacOS) ..._macOSHostEnvironment(),
    if (codeConfig.targetOS == OS.android)
      ...androidBuildEnvironment(codeConfig: codeConfig, target: target),
  };
}

Map<String, String> _macOSHostEnvironment() {
  String? pathValue = Platform.environment['PATH'];
  if (pathValue == null) {
    return const <String, String>{};
  }

  return <String, String>{
    // Xcode can inject SDK toolchain paths that confuse host tools used by
    // Zig build scripts, especially when build.zig.zon dependencies are used.
    'PATH': pathValue
        .split(':')
        .where((entry) => !entry.contains('Contents/Developer/'))
        .join(':'),
  };
}

/// Creates Android C toolchain environment variables for Zig.
Map<String, String> androidBuildEnvironment({
  required CodeConfig codeConfig,
  required Target target,
}) {
  CCompilerConfig? cCompiler = codeConfig.cCompiler;
  if (cCompiler == null) {
    throw StateError(
      'Android Zig builds require CodeConfig.cCompiler for ${target.triple}.',
    );
  }

  String binaryPath(String binaryName, {String windowsSuffix = 'cmd'}) {
    String compilerDirectory = path.dirname(path.fromUri(cCompiler.compiler));
    String executableName = OS.current == OS.windows
        ? '$binaryName.$windowsSuffix'
        : binaryName;
    String resolvedPath = path.join(compilerDirectory, executableName);

    if (!File(resolvedPath).existsSync()) {
      throw StateError(
        'Android toolchain binary not found: $resolvedPath. '
        'Check that the Android NDK installed for this build is new enough.',
      );
    }

    return resolvedPath;
  }

  String targetTripleEnvVar = target.triple.replaceAll('-', '_');
  String ndkTargetTriple = switch (target.triple) {
    'arm-linux-androideabi' => 'armv7a-linux-androideabi',
    'arm-linux-android' => 'armv7a-linux-androideabi',
    _ => target.triple,
  };
  int api = codeConfig.android.targetNdkApi;
  String clangPath = binaryPath('$ndkTargetTriple$api-clang');
  String clangPpPath = binaryPath('$ndkTargetTriple$api-clang++');
  String ranlibPath = binaryPath('llvm-ranlib', windowsSuffix: 'exe');
  String archiverPath = path.fromUri(cCompiler.archiver);

  return <String, String>{
    'AR_$targetTripleEnvVar': archiverPath,
    'CC_$targetTripleEnvVar': clangPath,
    'CXX_$targetTripleEnvVar': clangPpPath,
    'RANLIB_$targetTripleEnvVar': ranlibPath,
    'CC': clangPath,
    'CXX': clangPpPath,
    'AR': archiverPath,
  };
}
