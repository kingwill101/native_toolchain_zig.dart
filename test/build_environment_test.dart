import 'dart:io';

import 'package:code_assets/code_assets.dart';
import 'package:hooks/hooks.dart';
import 'package:native_toolchain_zig/src/build_environment.dart';
import 'package:native_toolchain_zig/src/target.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

void main() {
  group('androidBuildEnvironment', () {
    late Directory tempDir;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync(
        'native_toolchain_zig_android_env_',
      );
    });

    tearDown(() {
      tempDir.deleteSync(recursive: true);
    });

    test('uses Android NDK clang tools for the Zig target', () async {
      String clang = path.join(
        tempDir.path,
        _executable('aarch64-linux-android30-clang'),
      );
      String clangPp = path.join(
        tempDir.path,
        _executable('aarch64-linux-android30-clang++'),
      );
      String ranlib = path.join(
        tempDir.path,
        _executable('llvm-ranlib', windowsSuffix: 'exe'),
      );
      String archiver = path.join(
        tempDir.path,
        _executable('llvm-ar', windowsSuffix: 'exe'),
      );

      for (String filePath in <String>[clang, clangPp, ranlib, archiver]) {
        File(filePath).createSync();
      }

      await testCodeBuildHook(
        targetOS: OS.android,
        targetArchitecture: Architecture.arm64,
        targetAndroidNdkApi: 30,
        cCompiler: CCompilerConfig(
          archiver: Uri.file(archiver),
          compiler: Uri.file(clang),
          linker: Uri.file(clang),
        ),
        mainMethod: (List<String> arguments) async {
          await build(
            arguments,
            (BuildInput input, BuildOutputBuilder output) async {},
          );
        },
        check: (BuildInput input, BuildOutput output) {
          Target target = Target.fromBuildConfig(input.config);
          Map<String, String> environment = androidBuildEnvironment(
            codeConfig: input.config.code,
            target: target,
          );

          expect(environment['CC_aarch64_linux_android'], equals(clang));
          expect(environment['CXX_aarch64_linux_android'], equals(clangPp));
          expect(environment['RANLIB_aarch64_linux_android'], equals(ranlib));
          expect(environment['AR_aarch64_linux_android'], equals(archiver));
          expect(environment['CC'], equals(clang));
          expect(environment['CXX'], equals(clangPp));
          expect(environment['AR'], equals(archiver));
        },
      );
    });
  });
}

String _executable(String name, {String windowsSuffix = 'cmd'}) {
  return OS.current == OS.windows ? '$name.$windowsSuffix' : name;
}
