// Draw the enemy shadow
draw_sprite_ext(sprite_index, image_index, x, (y + (sprite_get_height(sprite_index) / 2) + 6), image_xscale, -(image_yscale / 2), 0, c_black, .35);

// Draw the enemy
draw_self();

// Draw the enemy marker
if (playerInRange && !instance_exists(obj_combat))
	draw_sprite(spr_enemy_marker, 0, x - 1, y - 36);
