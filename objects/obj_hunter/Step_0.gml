// Inherit the parent event
event_inherited();

// Movement logic - determine direction

var _hor = sign(target_x - x); // Horizontal movement (-1, 0, 1)
var _ver = sign(target_y - y); // Vertical movement (-1, 0, 1)

// Check horizontal first for priority
if (_hor != 0 && _ver == 0){
    if (_hor > 0){
        sprite_index = spr_hunter_idle_right;
        last_direction = "right";
    }
    else {
        sprite_index = spr_hunter_idle_left;
        last_direction = "left";
    }
}
else if (_ver != 0 && _hor == 0){
    if (_ver > 0){
        sprite_index = spr_hunter_idle_down;
        last_direction = "down";
    }
    else {
        sprite_index = spr_hunter_idle_up;
        last_direction = "up";
    }
}
else {
    // If no movement, stay in last direction
    switch (last_direction) {
        case "right": sprite_index = spr_hunter_idle_right; break;
        case "left": sprite_index = spr_hunter_idle_left; break;
        case "up": sprite_index = spr_hunter_idle_up; break;
        case "down": sprite_index = spr_hunter_idle_down; break;
    }
}
// Handle diagonal movement preference
if (_hor != 0 && _ver != 0) {
    if (abs(_hor) > abs(_ver)) {
        if (_hor > 0) {
            sprite_index = spr_hunter_idle_right;
            last_direction = "right";
        } 
        else {
            sprite_index = spr_hunter_idle_left;
            last_direction = "left";
        }
    }
    else {
        if (_ver > 0) {
            sprite_index = spr_hunter_idle_down;
            last_direction = "down";
        } 
        else {
            sprite_index = spr_hunter_idle_up;
            last_direction = "up";
        }
    }
}

switch (current_state) {

    case state_chase:
        // Continue chasing the player
        if (distance_to_object(obj_player) > detection_range * 1.2) {
            search_timer = 300; // Reset search timer
            current_state = state_return;
        }
        break;

    case state_return:
        // Search for the player if they vanish
        search_timer--;

        if (search_timer > 0) {
            target_x = obj_player.x + irandom_range(-search_range, search_range);
            target_y = obj_player.y + irandom_range(-search_range, search_range);
            search_range *= search_expansion_rate;
        } 
        else {
            search_range = 120; // Reset search range
            current_state = state_patrol;
        }
        break;
}
