const std = @import("std");

const c = @cImport({
    @cInclude("stdio.h");
    @cInclude("unistd.h");
});

pub fn c_write_error() void {
    const fd = c.fdopen(2, "w");
    // defer _ = c.close(2);
    defer _ = c.fclose(fd);
    const c_res = c.fprintf(fd, "This is an error!\n");

    std.debug.print("C result ist {d}\n", .{c_res});
}

const testing = std.testing;

test "c_write_error" {
    c_write_error();
}
