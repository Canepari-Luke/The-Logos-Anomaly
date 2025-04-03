// Inherit the parent event
event_inherited();

// Set default sprite to idle facing down
sprite_index = spr_hunter_idle_down;

// Keep track of last direction
last_direction = "down";


// Extra variables for searching
search_timer = 300;       // Time to search before giving up
search_range = 120;       // Initial search radius
search_expansion_rate = 1.1; // How much search range expands over time