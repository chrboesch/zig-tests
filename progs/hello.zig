const std = @import("std");

pub fn hello(str: []const u8) void {
    std.debug.print("Hello {s}!\n", .{str});
}

const testing = std.testing;

test "hello" {
    hello("Zig");
}
