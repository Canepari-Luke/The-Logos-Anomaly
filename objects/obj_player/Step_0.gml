// Check if sprint key (Shift) is held
if (keyboard_check(vk_shift)) {
    move_speed = 2; // Sprint speed
} else {
    move_speed = 1; // Normal speed
}

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

