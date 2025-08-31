const std = @import("std");
const Src = std.builtin.SourceLocation;

pub const ZoneCtx = struct {
    pub inline fn Text(self: ZoneCtx, text: []const u8) void {
        _ = self;
        _ = text;
    }
    pub inline fn Name(self: ZoneCtx, name: []const u8) void {
        _ = self;
        _ = name;
    }
    pub inline fn Value(self: ZoneCtx, value: u64) void {
        _ = self;
        _ = value;
    }
    pub inline fn End(self: ZoneCtx) void {
        _ = self;
    }
};

pub inline fn SetThreadName(name: [*:0]const u8) void {
    _ = name;
}

pub inline fn Zone(comptime src: Src) ZoneCtx {
    _ = src;
    return .{};
}
pub inline fn ZoneN(comptime src: Src, name: [*:0]const u8) ZoneCtx {
    _ = src;
    _ = name;
    return .{};
}
pub inline fn ZoneC(comptime src: Src, color: u32) ZoneCtx {
    _ = src;
    _ = color;
    return .{};
}
pub inline fn ZoneNC(comptime src: Src, name: [*:0]const u8, color: u32) ZoneCtx {
    _ = src;
    _ = name;
    _ = color;
    return .{};
}
pub inline fn ZoneS(comptime src: Src, depth: i32) ZoneCtx {
    _ = src;
    _ = depth;
    return .{};
}
pub inline fn ZoneNS(comptime src: Src, name: [*:0]const u8, depth: i32) ZoneCtx {
    _ = src;
    _ = name;
    _ = depth;
    return .{};
}
pub inline fn ZoneCS(comptime src: Src, color: u32, depth: i32) ZoneCtx {
    _ = src;
    _ = color;
    _ = depth;
    return .{};
}
pub inline fn ZoneNCS(comptime src: Src, name: [*:0]const u8, color: u32, depth: i32) ZoneCtx {
    _ = src;
    _ = name;
    _ = color;
    _ = depth;
    return .{};
}

pub inline fn Alloc(ptr: ?*const anyopaque, size: usize) void {
    _ = ptr;
    _ = size;
}
pub inline fn Free(ptr: ?*const anyopaque) void {
    _ = ptr;
}
pub inline fn SecureAlloc(ptr: ?*const anyopaque, size: usize) void {
    _ = ptr;
    _ = size;
}
pub inline fn SecureFree(ptr: ?*const anyopaque) void {
    _ = ptr;
}
pub inline fn AllocS(ptr: ?*const anyopaque, size: usize, depth: c_int) void {
    _ = ptr;
    _ = size;
    _ = depth;
}
pub inline fn FreeS(ptr: ?*const anyopaque, depth: c_int) void {
    _ = ptr;
    _ = depth;
}
pub inline fn SecureAllocS(ptr: ?*const anyopaque, size: usize, depth: c_int) void {
    _ = ptr;
    _ = size;
    _ = depth;
}
pub inline fn SecureFreeS(ptr: ?*const anyopaque, depth: c_int) void {
    _ = ptr;
    _ = depth;
}

pub inline fn AllocN(ptr: ?*const anyopaque, size: usize, name: [*:0]const u8) void {
    _ = ptr;
    _ = size;
    _ = name;
}
pub inline fn FreeN(ptr: ?*const anyopaque, name: [*:0]const u8) void {
    _ = ptr;
    _ = name;
}
pub inline fn SecureAllocN(ptr: ?*const anyopaque, size: usize, name: [*:0]const u8) void {
    _ = ptr;
    _ = size;
    _ = name;
}
pub inline fn SecureFreeN(ptr: ?*const anyopaque, name: [*:0]const u8) void {
    _ = ptr;
    _ = name;
}
pub inline fn AllocNS(ptr: ?*const anyopaque, size: usize, depth: c_int, name: [*:0]const u8) void {
    _ = ptr;
    _ = size;
    _ = depth;
    _ = name;
}
pub inline fn FreeNS(ptr: ?*const anyopaque, depth: c_int, name: [*:0]const u8) void {
    _ = ptr;
    _ = depth;
    _ = name;
}
pub inline fn SecureAllocNS(ptr: ?*const anyopaque, size: usize, depth: c_int, name: [*:0]const u8) void {
    _ = ptr;
    _ = size;
    _ = depth;
    _ = name;
}
pub inline fn SecureFreeNS(ptr: ?*const anyopaque, depth: c_int, name: [*:0]const u8) void {
    _ = ptr;
    _ = depth;
    _ = name;
}

pub inline fn Message(text: []const u8) void {
    _ = text;
}
pub inline fn MessageL(text: [*:0]const u8) void {
    _ = text;
}
pub inline fn MessageC(text: []const u8, color: u32) void {
    _ = text;
    _ = color;
}
pub inline fn MessageLC(text: [*:0]const u8, color: u32) void {
    _ = text;
    _ = color;
}
pub inline fn MessageS(text: []const u8, depth: c_int) void {
    _ = text;
    _ = depth;
}
pub inline fn MessageLS(text: [*:0]const u8, depth: c_int) void {
    _ = text;
    _ = depth;
}
pub inline fn MessageCS(text: []const u8, color: u32, depth: c_int) void {
    _ = text;
    _ = color;
    _ = depth;
}
pub inline fn MessageLCS(text: [*:0]const u8, color: u32, depth: c_int) void {
    _ = text;
    _ = color;
    _ = depth;
}

pub inline fn FrameMark() void {}
pub inline fn FrameMarkNamed(name: [*:0]const u8) void {
    _ = name;
}
pub inline fn FrameMarkStart(name: [*:0]const u8) void {
    _ = name;
}
pub inline fn FrameMarkEnd(name: [*:0]const u8) void {
    _ = name;
}
pub inline fn FrameImage(image: ?*const anyopaque, width: u16, height: u16, offset: u8, flip: c_int) void {
    _ = image;
    _ = width;
    _ = height;
    _ = offset;
    _ = flip;
}

pub inline fn FiberEnter(name: [*:0]const u8) void {
    _ = name;
}
pub inline fn FiberLeave() void {}

pub inline fn PlotF(name: [*:0]const u8, val: f64) void {
    _ = name;
    _ = val;
}
pub inline fn PlotU(name: [*:0]const u8, val: u64) void {
    _ = name;
    _ = val;
}
pub inline fn PlotI(name: [*:0]const u8, val: i64) void {
    _ = name;
    _ = val;
}
pub inline fn AppInfo(text: []const u8) void {
    _ = text;
}

pub const TracyAllocator = struct {
    child_allocator: std.mem.Allocator,

    pub fn init(child_allocator: std.mem.Allocator) TracyAllocator {
        return .{
            .child_allocator = child_allocator,
        };
    }

    pub fn allocator(self: *TracyAllocator) std.mem.Allocator {
        return self.child_allocator;
    }
};
