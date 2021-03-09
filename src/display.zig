const c = @cImport({
    @cInclude("unistd.h");
});

const WIDTH = 80;
const HEIGHT = 40;

pub const Size = struct {
    width: usize,
    height: usize
};

pub const Terminal = struct {
    frameBuffer : [WIDTH * HEIGHT]u8,

    pub fn init() Terminal {
        var terminal = Terminal{
            .frameBuffer = [_]u8{' '} ** (WIDTH * HEIGHT)
        };
        return terminal;
    }

    pub fn cls(self: *Terminal) void {
        for (self.frameBuffer) |*byte| {
            byte.* = ' ';
        }
    }

    pub fn write(self: *Terminal, x: u8, y: u8, pixel: u8) void {
        self.frameBuffer[@as(usize, x) + @as(usize, y) * WIDTH] = pixel;     
    }

    pub fn size(self: Terminal) Size {
        return .{
            .width = WIDTH,
            .height = HEIGHT
        };
    }

    pub fn present(self: Terminal) void {
        const cls_seq = "\x1b[1;1H\x1b[2J";
        _ = c.write(0, cls_seq, 10);
        var y: usize = 0;
        var fb = &(self.frameBuffer);
        while (y < HEIGHT) : (y += 1) {
            _ = c.write(1, fb, WIDTH);
            _ = c.write(1, "\n", 1);
            const tmp = @ptrToInt(fb);
            fb = @intToPtr(@TypeOf(fb), tmp + WIDTH);
        }
    }
};