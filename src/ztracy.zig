const std = @import("std");
const builtin = @import("builtin");

// check for a decl named tracy_enabled in root or build_options
pub const enabled = blk: {
    var build_enable: ?bool = null;

    if (!builtin.is_test) {
        // Don't try to include build_options in tests.
        // Otherwise `zig test` doesn't work.
        const options = @import("ztracy_options");
        if (@hasDecl(options, "enable_ztracy")) {
            build_enable = options.enable_ztracy;
        }
    }

    break :blk build_enable orelse false;
};

const stub = @import("stub.zig");
const impl = @import("impl.zig");

pub const ZoneCtx = if (enabled) impl.ZoneCtx else stub.ZoneCtx;

pub const SetThreadName = if (enabled) impl.SetThreadName else stub.SetThreadName;

pub const Zone = if (enabled) impl.Zone else stub.Zone;
pub const ZoneN = if (enabled) impl.ZoneN else stub.ZoneN;
pub const ZoneC = if (enabled) impl.ZoneC else stub.ZoneC;
pub const ZoneNC = if (enabled) impl.ZoneNC else stub.ZoneNC;
pub const ZoneS = if (enabled) impl.ZoneS else stub.ZoneS;
pub const ZoneNS = if (enabled) impl.ZoneNS else stub.ZoneNS;
pub const ZoneCS = if (enabled) impl.ZoneCS else stub.ZoneCS;
pub const ZoneNCS = if (enabled) impl.ZoneNCS else stub.ZoneNCS;

pub const Alloc = if (enabled) impl.Alloc else stub.Alloc;
pub const Free = if (enabled) impl.Free else stub.Free;
pub const SecureAlloc = if (enabled) impl.SecureAlloc else stub.SecureAlloc;
pub const SecureFree = if (enabled) impl.SecureFree else stub.SecureFree;

pub const AllocS = if (enabled) impl.AllocS else stub.AllocS;
pub const FreeS = if (enabled) impl.FreeS else stub.FreeS;
pub const SecureAllocS = if (enabled) impl.SecureAllocS else stub.SecureAllocS;
pub const SecureFreeS = if (enabled) impl.SecureFreeS else stub.SecureFreeS;

pub const AllocN = if (enabled) impl.AllocN else stub.AllocN;
pub const FreeN = if (enabled) impl.FreeN else stub.FreeN;
pub const SecureAllocN = if (enabled) impl.SecureAllocN else stub.SecureAllocN;
pub const SecureFreeN = if (enabled) impl.SecureFreeN else stub.SecureFreeN;

pub const AllocNS = if (enabled) impl.AllocNS else stub.AllocNS;
pub const FreeNS = if (enabled) impl.FreeNS else stub.FreeNS;
pub const SecureAllocNS = if (enabled) impl.SecureAllocNS else stub.SecureAllocNS;
pub const SecureFreeNS = if (enabled) impl.SecureFreeNS else stub.SecureFreeNS;

pub const Message = if (enabled) impl.Message else stub.Message;
pub const MessageL = if (enabled) impl.MessageL else stub.MessageL;
pub const MessageC = if (enabled) impl.MessageC else stub.MessageC;
pub const MessageLC = if (enabled) impl.MessageLC else stub.MessageLC;
pub const MessageS = if (enabled) impl.MessageS else stub.MessageS;
pub const MessageLS = if (enabled) impl.MessageLS else stub.MessageLS;
pub const MessageCS = if (enabled) impl.MessageCS else stub.MessageCS;
pub const MessageLCS = if (enabled) impl.MessageLCS else stub.MessageLCS;

pub const FrameMark = if (enabled) impl.FrameMark else stub.FrameMark;
pub const FrameMarkNamed = if (enabled) impl.FrameMarkNamed else stub.FrameMarkNamed;
pub const FrameMarkStart = if (enabled) impl.FrameMarkStart else stub.FrameMarkStart;
pub const FrameMarkEnd = if (enabled) impl.FrameMarkEnd else stub.FrameMarkEnd;
pub const FrameImage = if (enabled) impl.FrameImage else stub.FrameImage;

pub const FiberEnter = if (enabled) impl.FiberEnter else stub.FiberEnter;
pub const FiberLeave = if (enabled) impl.FiberLeave else stub.FiberLeave;

pub const PlotF = if (enabled) impl.PlotF else stub.PlotF;
pub const PlotU = if (enabled) impl.PlotU else stub.PlotU;
pub const PlotI = if (enabled) impl.PlotI else stub.PlotI;

pub const AppInfo = if (enabled) impl.AppInfo else stub.AppInfo;

pub const TracyAllocator = if (enabled) impl.TracyAllocator else stub.TracyAllocator;

test {
    std.testing.refAllDeclsRecursive(@This());
}
