//! Extracts exported Zig declarations for Dart FFI binding generation.
const model = @import("zig_api_dump_model.zig");
const extractor = @import("zig_api_dump_extractor.zig");

/// The normalized API metadata returned by [extractDocument].
pub const Document = model.Document;

/// Traverses [root_source_file] and returns its exported declarations.
pub const extractDocument = extractor.extractDocument;

test {
    _ = @import("zig_api_dump_comments.zig");
    _ = @import("zig_api_dump_cimport.zig");
    _ = @import("zig_api_dump_extractor_test.zig");
}
