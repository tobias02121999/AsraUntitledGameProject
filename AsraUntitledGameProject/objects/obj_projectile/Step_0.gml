// Move the projectile
scr_projectile_move();

// Destroy the projectile if it gets too far away from the player
var dist = distance_to_object(obj_player);
if (dist >= 216)
	instance_destroy();
