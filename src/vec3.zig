const assert = @import("std").debug.assert;

pub const Vec3 = struct {
    x: f32,
    y: f32,
    z: f32,

    pub fn init(x: f32, y: f32, z: f32) Vec3 {
        return Vec3 {
            .x = x,
            .y = y,
            .z = z
        };
    }

    pub fn length(self: Vec3) f32 {
        return @sqrt(self.x * self.x + self.y * self.y + self.z * self.z);
    }

    pub fn normalize(self: *Vec3) void {
        const size = self.length();
        self.x /= size;
        self.y /= size;
        self.z /= size;
    }

    pub fn scale(self: Vec3, factor: f32) Vec3 {
        return Vec3.init(self.x * factor, self.y * factor, self.z * factor);
    }

    pub fn add(self: Vec3, other: Vec3) Vec3 {
        return Vec3.init(self.x + other.x, self.y + other.y, self.z + other.z);
    }

    pub fn sub(self: Vec3, other: Vec3) Vec3 {
        return Vec3.init(self.x - other.x, self.y - other.y, self.z - other.z);
    }

    pub fn dot(self: Vec3, other: Vec3) f32 {
        return self.x * other.x + self.y * other.y + self.z * other.z;
    }
};

test "Vec3 init" {
    const value = Vec3.init(1, 2, 3);
    assert(value.x == 1);
    assert(value.y == 2);
    assert(value.z == 3);
}

test "Vec3 length" {
    const value = Vec3.init(1, 0, 0);
    assert(value.length() == 1);
}

test "Vec3 normalize" {
    var value = Vec3.init(1, 2, 3);
    value.normalize();
    assert(value.length() <= 1);
    assert(value.length() >= 0.99);
}

test "Vec3 scale" {
    const value = Vec3.init(1, 2, 3);
    const scaled = value.scale(2);
    assert(scaled.x == 2);
    assert(scaled.y == 4);
    assert(scaled.z == 6);
}

test "Vec3 add" {
    const value = Vec3.init(1, 2, 3);
    const value2 = Vec3.init(1, 2, 3);
    const added = value.add(value2);
    assert(added.x == 2);
    assert(added.y == 4);
    assert(added.z == 6);
}

test "Vec3 sub" {
    const value = Vec3.init(1, 2, 3);
    const value2 = Vec3.init(1, 2, 3);
    const added = value.sub(value2);
    assert(added.x == 0);
    assert(added.y == 0);
    assert(added.z == 0);
}

test "Vec3 dot" {
    const value = Vec3.init(1, 2, 3);
    const value2 = Vec3.init(1, 2, 3);
    const dot = value.dot(value2);
    assert(dot == 14);
}