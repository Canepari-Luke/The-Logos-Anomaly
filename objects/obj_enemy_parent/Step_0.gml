switch (current_state) {

    case state_patrol:
        // Patrol behavior
        if (distance_to_point(home_x, home_y) > patrol_range) {
            target_x = home_x;
            target_y = home_y;
        }
        else if (distance_to_object(obj_player) < detection_range) {
            current_state = state_chase;
        }
        break;

    case state_chase:
        // Chase the player
        target_x = obj_player.x;
        target_y = obj_player.y;

        if (distance_to_object(obj_player) > detection_range * 1.2) {
            current_state = state_return;
        }
        break;

    case state_return:
        // Return to patrol position
        target_x = home_x;
        target_y = home_y;

        if (distance_to_point(home_x, home_y) < 5) {
            current_state = state_patrol;
        }
        break;
}

// Move toward target
var _hor = sign(target_x - x);
var _ver = sign(target_y - y);

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);

// Check for collisions with other enemies
if (place_meeting(x, y, obj_enemy_parent)) {
    var other_enemy = instance_place(x, y, obj_enemy_parent);
    
    if (other_enemy) {
        // Find the direction to move away
        var push_x = sign(x - other_enemy.x);
        var push_y = sign(y - other_enemy.y);

        // Move slightly to avoid overlap
        x += push_x * 2;
        y += push_y * 2;

        // Double-check if still overlapping, move again
        if (place_meeting(x, y, obj_enemy_parent)) {
            x += push_x * 2;
            y += push_y * 2;
        }
    }
}