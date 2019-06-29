// Draw the enemy
draw_self();

// Draw the enemy marker
if (playerInRange && !instance_exists(obj_combat))
	draw_sprite(spr_enemy_marker, 0, x, y);
