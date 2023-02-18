const std = @import("std");

const c = @cImport({
    @cInclude("string.h");
    @cInclude("math.h");
});

pub fn main() void {
    var data = "Hello world!";
    const c_res = c.strlen(data);
    std.debug.print("{d}\n", .{c_res});

    std.debug.print("{d}\n", .{c.sqrt(9)});
    std.debug.print("{d}\n", .{c.round(3.5)});
    std.debug.print("{d}\n", .{c.ceil(3.5)});
    std.debug.print("{d}\n", .{c.trunc(3.5)});
    std.debug.print("{d}\n", .{c.floor(3.5)});

    const num = 10.4;
    const denom = 3.9;

    const result = c.fmod(num, denom);
    std.debug.print("{d}\n", .{result});
}
