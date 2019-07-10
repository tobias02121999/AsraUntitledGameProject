// Draw the player and enemy stats to the UI

// Draw the player stats
if (instance_exists(obj_player))
{
	var player = obj_player;
	draw_set_font(-1);
	
	// Draw the stats background
	var color = make_color_rgb(135, 111, 89);
	draw_set_color(color);
	
	draw_rectangle(0, 540, 165, 470, false);
	
	// Reset the color
	draw_set_color(c_white);

	// Draw the player health
	draw_text(16, 508, "Health:  " + string(player.hp) + "/" + string(player.maxHp));

	// Draw the player potions
	draw_text(16, 482, "Potions: " + string(player.potions));

	// Reset the font
	draw_set_font(global.font);

	// Draw the enemy stats
	if (instance_exists(obj_player.target) && instance_exists(obj_combat))
	{
		var enemy = obj_player.target;
		draw_set_font(-1);
	
		// Draw the stats background
		var color = make_color_rgb(135, 111, 89);
		draw_set_color(color);
	
		draw_rectangle(795, 0, 960, 55, false);
	
		// Reset the color
		draw_set_color(c_white);

		// Draw the player health
		draw_text(811, 16, "Health:  " + string(enemy.hp) + "/" + string(enemy.maxHp));

		// Reset the font
		draw_set_font(global.font);
	}
}
