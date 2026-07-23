const std = @import("std");

const dump = @import("zig_api_dump.zig");

pub fn main() !void {
    var arena_state = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena_state.deinit();
    const allocator = arena_state.allocator();

    const root_source_file = std.process.getEnvVarOwned(
        allocator,
        "NATIVE_TOOLCHAIN_ZIG_ROOT_SOURCE_FILE",
    ) catch |err| switch (err) {
        error.EnvironmentVariableNotFound => {
            std.debug.print(
                "usage: set NATIVE_TOOLCHAIN_ZIG_ROOT_SOURCE_FILE and run zig_api_dump_015.zig\n",
                .{},
            );
            return error.InvalidArguments;
        },
        else => |e| return e,
    };
    defer allocator.free(root_source_file);

    const document = try dump.extractDocument(allocator, root_source_file, {});

    const stdout = std.fs.File.stdout().deprecatedWriter();
    try stdout.print("{f}\n", .{std.json.fmt(document, .{})});
}
