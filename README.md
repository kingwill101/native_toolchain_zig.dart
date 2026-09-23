# 🔧 native_toolchain_zig

[![Pub Version][pub_badge]][pub_link]
[![Dart CI][dart_ci]][dart_ci_link]
[![License: MIT][license_badge]][license_link]

Build Zig libraries with Dart's [build hooks][dart_hooks] and generate Dart FFI
bindings from exported Zig declarations. The build hook compiles and bundles the
native library; the bindings CLI generates the Dart API that calls it.

The generator reads Zig source directly and uses `zig translate-c` for supported
`@cImport` declarations. You can generate bindings without maintaining a separate
C header for your exported Zig functions.

### Prerequisites

- Dart SDK **3.13.0 or later**, within the Dart 3 release series.
- [Zig][zig_download] installed and available as `zig` on `PATH`.
  CI covers **Zig 0.15.2 and 0.16.0**. The metadata extractor selects the matching
  version-specific entrypoint automatically.

### Installation

```bash
dart pub add hooks native_toolchain_zig
```

### Project Setup

1. Create your Zig project in `my_project/zig/`:

```
my_package/
├── bin/
│   └── main.dart
├── hook/
│   └── build.dart
├── lib/
│   └── my_package.dart
├── zig/
│   ├── src/
│   │   └── lib.zig
│   ├── build.zig
│   └── build.zig.zon
└── pubspec.yaml
```

2. Create `hook/build.dart`:

```dart
import 'package:hooks/hooks.dart';
import 'package:native_toolchain_zig/native_toolchain_zig.dart';

Future<void> main(List<String> arguments) async {
  await build(arguments, (input, output) async {
    await ZigBuilder(
      assetName: 'my_package.dart',
      zigDir: 'zig/',
    ).run(input: input, output: output);
  });
}
```

3. Create `zig/build.zig`:

```zig
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const lib = b.addLibrary(.{
        .name = "my_package",
        .linkage = .dynamic,
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/lib.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });

    b.installArtifact(lib);
}
```

<details>
<summary><strong>Build both static and dynamic libraries</strong></summary>

To produce both library types in a single build:

```zig
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const root_module = b.createModule(.{
        .root_source_file = b.path("src/lib.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Dynamic library (.so, .dylib, .dll)
    const dynamic_lib = b.addLibrary(.{
        .name = "my_package",
        .linkage = .dynamic,
        .root_module = root_module,
    });

    b.installArtifact(dynamic_lib);

    // Static library (.a, .lib)
    const static_lib = b.addLibrary(.{
        .name = "my_package",
        .linkage = .static,
        .root_module = root_module,
    });

    b.installArtifact(static_lib);
}
```

</details>

<details>
<summary><strong>Select linkage via command line</strong></summary>

To control linkage type via a custom `-Dlinkage` option, first accept it in
your `build.zig`:

```zig
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const linkage = b.option(
        std.builtin.LinkMode,
        "linkage",
        "Library linkage type",
    ) orelse .dynamic;

    const lib = b.addLibrary(.{
        .name = "my_package",
        .linkage = linkage,
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/lib.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });

    b.installArtifact(lib);
}
```

Then pass the flag from Dart via `extraArguments` in `hook/build.dart`:

```dart
import 'package:hooks/hooks.dart';
import 'package:native_toolchain_zig/native_toolchain_zig.dart';

Future<void> main(List<String> arguments) async {
  await build(arguments, (input, output) async {
    await ZigBuilder(
      assetName: 'my_package.dart',
      zigDir: 'zig/',
      // Forward the linkage option to zig build
      extraArguments: ['-Dlinkage=static'],
    ).run(input: input, output: output);
  });
}
```

</details>

4. Create `zig/build.zig.zon`:

```zig
.{
    .name = .my_package,
    .version = "0.1.0",
    .minimum_zig_version = "0.15.2",
    .fingerprint = 0x..........,
    .paths = .{
        "src",
        "build.zig",
        "build.zig.zon",
    },
}
```

Replace the fingerprint placeholder with the fingerprint suggested by `zig build`
for your package name. Include local C headers in `.paths` when using `@cImport`.

> [!IMPORTANT]
> The `paths` field drives **incremental build tracking**. `ZigBuilder` parses
> `build.zig.zon` and registers every file and directory listed in `paths` as a
> build dependency. When any of those files change, Dart's build system
> automatically re-triggers the Zig build. Make sure `paths` includes all source
> directories and files your build depends on (e.g. `"src"`, C headers,
> embedded data files).
>
> The `name` field (`.my_package`) is a comptime enum literal and is ignored.

5. Create `zig/src/lib.zig`:

```zig
export fn add(a: i32, b: i32) i32 {
    return a + b;
}
```

6. Generate Dart bindings in `lib/my_package.dart`:

```bash
dart run native_toolchain_zig:zig bindings --output lib/my_package.dart
```

The generator discovers exported Zig declarations and emits Dart `@Native`
bindings that use the same native asset ID registered by `ZigBuilder`.

You can also pass explicit paths:

```bash
dart run native_toolchain_zig:zig bindings \
  --zig-dir zig \
  --root-source-file src/lib.zig \
  --output lib/my_package.dart
```

During development, use watch mode:

```bash
dart run native_toolchain_zig:zig bindings --watch
```

7. Create `bin/main.dart` and call the generated bindings:

```dart
import 'package:my_package/my_package.dart';

void main() {
  print(add(3, 4)); // 7
}
```

Run it with `dart run bin/main.dart`. Dart invokes the build hook to compile and
register the native library before executing the program.

## Binding generation

The supported ABI surface includes exported functions and globals, reachable
`extern struct` and `extern union` types, explicitly tagged enums, pointers,
fixed-size array fields (including nested arrays), and C function pointers.
Aliases and declarations reached through local `.zig` imports are resolved, and
source comments are carried into generated Dart documentation.

Function pointer types must use `callconv(.c)`. Generated callback typedefs can
be used with Dart FFI callback APIs; see the cImport example for callable and
listener callbacks. Packed structs are supported only when their fields have
byte-aligned layouts representable by Dart FFI.

This is a source-based extractor, not a full evaluator of arbitrary Zig code.
Package-name imports and dynamically computed import paths are not followed.
Keep the exported interface representable by Dart FFI; unsupported types or
calling conventions produce generation errors.

### Asset IDs and output paths

The default output is `lib/src/ffi.g.dart`. Its generated `@DefaultAsset` value
is inferred from the package name and the output path under `lib/`. For example,
`lib/src/ffi.g.dart` in `my_package` uses `package:my_package/src/ffi.g.dart`.
Configure `ZigBuilder(assetName: 'src/ffi.g.dart', zigDir: 'zig')` to register that
same asset. If the Zig library name differs from the Dart package name, also set
`libraryName` to the name declared in `build.zig`.

Use `--asset-id` when the generated file should refer to an asset registered
under a different name. Binding generation and native compilation are separate
steps: rerun the CLI (or use `--watch`) when the exported interface changes.

### C imports and cross compilation

The generator translates `@cImport` include blocks and resolves translated C
types used by exported Zig declarations. Header discovery checks the source
file's directory, its `include/` subdirectory, and a sibling `include/`
directory. Configure include paths and libc linkage in `build.zig` separately
for the native build, as shown in [the cImport example](example/cimport).

C translation checks `@import("builtin").link_libc` at compile time using the
selected library module's configuration from `build.zig`. This evaluates computed
build settings and does not execute target code, so it also works for cross
compilation. Use `--link-libc` or `--no-link-libc` (`ZigBindingsOptions.linkLibc`
in Dart) to override detection and skip the probe. Without `build.zig`, libc
support defaults to disabled. Keep overrides aligned with your native build.

For target-dependent C headers, pass the same target ABI and appropriate system
root used by your native build:

```bash
dart run native_toolchain_zig:zig bindings \
  --package-root example/cimport \
  --zig-dir zig \
  --root-source-file src/lib.zig \
  --output lib/ffi.g.dart \
  --target aarch64-linux-gnu \
  --sysroot /path/to/target/sysroot
```

Replace the sysroot placeholder with an installed target sysroot, or omit
`--sysroot` if one is not needed. These options configure C translation during
binding generation. The build hook selects its compilation target from Dart's
build configuration. Regenerate target-dependent bindings when changing ABI.

### CLI options

| Option | Purpose |
| --- | --- |
| `--output`, `-o` | Generated Dart file; defaults to `lib/src/ffi.g.dart`. |
| `--zig-dir` | Zig project directory; otherwise discovers `zig/`, `native/`, or `src/`. |
| `--root-source-file` | Source path relative to the Zig directory; otherwise inferred from `build.zig` or common source locations. |
| `--package-root` | Dart package root; defaults to the current directory. |
| `--asset-id` | Override the generated native asset ID. |
| `--target` | Zig target triple passed to C translation. |
| `--sysroot` | Target system root passed to C translation. |
| `--[no-]link-libc` | Override libc header support; otherwise inferred from the selected module in `build.zig`. |
| `--watch`, `-w` | Regenerate when files under the Zig directory change. |
| `--help`, `-h` | Show command usage. |

Watch mode polls the Zig directory and excludes `.zig-cache`, `zig-out`,
generator intermediates, temporary probe wrappers, and the configured output file.
Changes to files outside that directory require explicit regeneration.

### Dart API

The same generator is available through the package's public library:

```dart
import 'package:native_toolchain_zig/native_toolchain_zig.dart';

Future<void> main() async {
  await generateBindings(
    ZigBindingsOptions(
      packageRoot: '.',
      zigDirectory: 'zig',
      rootSourceFile: 'src/lib.zig',
      output: 'lib/my_package.dart',
    ),
  );
}
```

Use `generateBindingsSource` to obtain the generated source, asset ID,
dependencies, and declaration counts without writing a file. `watchBindings`
provides continuous regeneration.

## Examples

| Example | Demonstrates | Run from its example directory |
| --- | --- | --- |
| [bindings](example/bindings) | Generated bindings and a Dart counter wrapper. | `dart run bindings:main` |
| [cimport](example/cimport) | Nested C headers, structs, unions, arrays, pointers, and callbacks. | `dart run cimport:main` |
| [math](example/math) | A native math library with handwritten FFI bindings. | `dart run math:main` |
| [dart_api](example/dart_api) | Dart native API initialization and isolate messaging. | `dart run dart_api:main` |

## Development and validation

From the repository root, with the desired Zig version on `PATH`:

```bash
dart pub get
dart analyze --fatal-infos
dart format --output=none --set-exit-if-changed .
dart test
zig test lib/src/zig/dump.zig
```

The Zig test command takes a source file, not a directory. Run `zig build test`
from `example/math/zig` for the math tests, and `zig build` from
`example/dart_api/zig` to build its native library. Run the example commands
above sequentially when validating their build hooks.

CI runs the checks on Zig 0.15.2 and 0.16.0. Its Dart test command is
`dart test -P ci`, which excludes tests tagged `fails-on-ci`; use `dart test`
locally for the unfiltered suite.

## License

MIT License - see [LICENSE](LICENSE) for details.

<!-- Badges -->

[pub_badge]: https://img.shields.io/pub/v/native_toolchain_zig
[pub_link]: https://pub.dev/packages/native_toolchain_zig
[dart_ci]: https://github.com/ykmnkmi/native_toolchain_zig.dart/actions/workflows/ci.yaml/badge.svg
[dart_ci_link]: https://github.com/ykmnkmi/native_toolchain_zig.dart/actions
[license_badge]: https://img.shields.io/badge/license-MIT-purple.svg
[license_link]: https://opensource.org/licenses/MIT

<!-- Links -->

[dart_hooks]: https://dart.dev/tools/hooks
[zig_download]: https://ziglang.org/download/
