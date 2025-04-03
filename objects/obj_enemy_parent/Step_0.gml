switch (current_state) {
    case state_patrol:
        if (distance_to_point(home_x, home_y) > patrol_range) {
            target_x = home_x;
            target_y = home_y;
        }
        else if (distance_to_object(obj_player) < detection_range) {
            current_state = state_chase;
        }
        break;

    case state_chase:
        target_x = obj_player.x;
        target_y = obj_player.y;

        if (distance_to_object(obj_player) > detection_range * 1.2) {
            search_timer = 300; // Reset search timer
            current_state = state_return;
        }
        break;

    case state_return:
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

// Smart Movement & Avoidance (ONLY CHANGES MOVEMENT, NOT TARGETING)
var _hor = sign(target_x - x);
var _ver = sign(target_y - y);

var new_x = x + (_hor * move_speed);
var new_y = y + (_ver * move_speed);

// Check for obstacles (walls and other enemies)
var can_move_x = !tilemap_get_at_pixel(tilemap, new_x, y);
var can_move_y = !tilemap_get_at_pixel(tilemap, x, new_y);
var enemy_in_x = instance_place(new_x, y, obj_enemy_parent);
var enemy_in_y = instance_place(x, new_y, obj_enemy_parent);

// Move in priority order
if (can_move_x && enemy_in_x == noone) {
    x = new_x;
}
else if (can_move_y && enemy_in_y == noone) {
    y = new_y;
}
// If both are blocked, stay in place
