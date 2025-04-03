// Patrol settings
patrol_range = 200;
detection_range = 100;
move_speed = 1;

// AI states
state_patrol = 0;
state_chase = 1;
state_return = 2;
current_state = state_patrol;

// Initial position for patrol return
home_x = x;
home_y = y;
target_x = x;
target_y = y;

// Tilemap reference
tilemap = layer_tilemap_get_id("wall");

// 🛠️ Declare search variables here to prevent errors
search_timer = 300;        // How long an enemy searches before giving up
search_range = 120;        // Initial search radius
search_expansion_rate = 1.1; // How much search range expands over time
