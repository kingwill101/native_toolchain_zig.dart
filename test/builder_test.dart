import 'package:native_toolchain_zig/native_toolchain_zig.dart';
import 'package:native_toolchain_zig/src/zig_project.dart' as internal;
import 'package:test/test.dart';

void main() {
  group('ZigBuilder', () {
    test('has correct default values', () {
      ZigBuilder builder = ZigBuilder(assetName: 'test.dart');

      expect(builder.assetName, equals('test.dart'));
      expect(builder.zigDir, isNull);
      expect(builder.libraryName, isNull);
      expect(builder.optimization, equals(Optimization.releaseSafe));
      expect(builder.extraArguments, isEmpty);
    });

    test('accepts custom values', () {
      ZigBuilder builder = ZigBuilder(
        assetName: 'bindings.dart',
        zigDir: 'native/',
        libraryName: 'mylib',
        optimization: Optimization.releaseFast,
        extraArguments: ['-Dfeature=true', '--verbose'],
      );

      expect(builder.assetName, equals('bindings.dart'));
      expect(builder.zigDir, equals('native/'));
      expect(builder.libraryName, equals('mylib'));
      expect(builder.optimization, equals(Optimization.releaseFast));

      expect(
        builder.extraArguments,
        containsAll(['-Dfeature=true', '--verbose']),
      );
    });
  });

  group('libraryNameFromZon', () {
    test('uses build.zig.zon name when present', () {
      expect(
        internal.libraryNameFromZon({'name': 'zig_math'}),
        equals('zig_math'),
      );
    });

    test('ignores missing or empty build.zig.zon names', () {
      expect(internal.libraryNameFromZon(<String, Object?>{}), isNull);
      expect(internal.libraryNameFromZon({'name': '  '}), isNull);
    });
  });
}
