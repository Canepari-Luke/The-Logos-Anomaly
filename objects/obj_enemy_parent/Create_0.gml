// Patrol settings
patrol_range = 200;       // Distance to patrol
detection_range = 100;    // Player detection distance
move_speed = 1;           // Normal speed when patrolling

// AI states
state_patrol = 0;
state_chase = 1;
state_return = 2;

current_state = state_patrol;

// Initial position to return after patrol
home_x = x;
home_y = y;

// Target variables
target_x = x;
target_y = y;

// Assign the tilemap
tilemap = layer_tilemap_get_id("wall");