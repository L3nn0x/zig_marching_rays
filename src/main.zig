const std = @import("std");
const Vec3 = @import("vec3.zig").Vec3;
const display = @import("display.zig");
const c = @cImport({
    @cInclude("unistd.h");
});

const warn = @import("std").debug.warn;

fn raymarch(terminal: *display.Terminal) void {
    var y: usize = 0;
    var x: usize = 0;
    const size = terminal.size();
    while (y < size.height) : (y += 1) {
        while (x < size.width) : (x += 1) {
            var pos = Vec3.init(0, 0, -3); // camera position
            const target = Vec3.init(@intToFloat(f32, x) / @intToFloat(f32, size.width) - 0.5,
                                     (@intToFloat(f32, y) / @intToFloat(f32, size.height) - 0.5) * (@intToFloat(f32, size.height) / @intToFloat(f32, size.width)) * 1.5,
                                     -1.5);

            var ray = target.sub(pos);
            ray.normalize();

            var i: usize = 0;
            var max: f32 = 9999;
            var pixel: u8 = ' ';
            iter: while (i < 15_000) : (i += 1) {
                if (@fabs(pos.x) > max or @fabs(pos.y) > max or @fabs(pos.z) > max) {
                    break :iter;
                }
                var dist = sdf(pos);
                if (dist < 1e-6) {
                    pixel = shade(pos);
                    break :iter;
                }
                pos = pos.add(ray.scale(dist));
            }
            terminal.write(@intCast(u8, x), @intCast(u8, y), pixel);
        }
        x = 0;
    }
}

fn sdf(pos: Vec3) f32 {
    const center = Vec3.init(0, 0, 0);
    return pos.sub(center).length() - 0.2;
}

fn shade(pos: Vec3) u8 {
    const pixels = " .:+|0#";
    var light = Vec3.init(50, 20, 50);
    light.normalize();

    const dt = 1e-6;
    const current_val = sdf(pos);
    const x = Vec3.init(pos.x + dt, pos.y, pos.z);
    const y = Vec3.init(pos.x, pos.y + dt, pos.z);
    const z = Vec3.init(pos.x, pos.y, pos.z + dt);

    const dx = sdf(x) - current_val;
    const dy = sdf(y) - current_val;
    const dz = sdf(z) - current_val;

    var n = Vec3.init((dx - pos.x) / dt,
                        (dy - pos.y) / dt,
                        (dz - pos.z) / dt);
    
    if (n.length() < 1e-9) {
        return pixels[0];
    }

    n.normalize();

    const diffuse = (light.dot(n) + 1) / 2 * @intToFloat(f32, pixels.len);

    return pixels[@floatToInt(usize, diffuse) % pixels.len];
}

pub fn main() !void {
    const stdout = std.io.getStdOut().outStream();
    var terminal = display.Terminal.init();
    while (true) {
        terminal.cls();
        raymarch(&terminal);
        terminal.present();
        _ = c.sleep(1);
    }
}