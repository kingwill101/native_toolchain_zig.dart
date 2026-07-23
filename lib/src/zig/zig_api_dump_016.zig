const std = @import("std");

const dump = @import("zig_api_dump.zig");

pub fn main(init: std.process.Init) !void {
    const root_source_file = init.environ_map.get("NATIVE_TOOLCHAIN_ZIG_ROOT_SOURCE_FILE") orelse {
        std.debug.print(
            "usage: set NATIVE_TOOLCHAIN_ZIG_ROOT_SOURCE_FILE and run zig_api_dump_016.zig\n",
            .{},
        );
        return error.InvalidArguments;
    };

    var arena_state = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena_state.deinit();
    const allocator = arena_state.allocator();

    const document = try dump.extractDocument(allocator, root_source_file, init.io);

    var stdout_buffer: [4096]u8 = undefined;
    var stdout_writer = std.Io.File.stdout().writer(init.io, &stdout_buffer);
    try stdout_writer.interface.print("{f}\n", .{std.json.fmt(document, .{})});
    try stdout_writer.flush();
}
