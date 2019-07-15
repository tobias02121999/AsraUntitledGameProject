// Run the appropriate code for the selected button

// Get the arguments
var buttonID = argument0;

// Switch throught the different buttonIDs and run the appropriate code
switch (buttonID)
{
	// The combat attack button
	case 0:
		instance_create_layer(0, 0, "UI", obj_menu_fight);
		with (self) instance_destroy();
		break;
		
	// The combat item button
	case 1:
		instance_create_layer(0, 0, "UI", obj_menu_item);
		with (self) instance_destroy();
		break;
		
	// The combat flee button
	case 2:
		scr_combat_abort(); // Abort the current combat
		break;
		
	// The fight fireball button
	case 3:
		var player = obj_player;
		
		player.alarm[0] = 2;
		
		player.ammo = player.fireballAmmo;
		player.playerState = "FIREBALL";
		
		player.target.enemyState = "DODGE";
		
		with (self) instance_destroy();
		break;
		
	// The fight and item back button
	case 4:
		instance_create_layer(0, 0, "UI", obj_menu_combat);
		with (self) instance_destroy();
		break;
		
	// The main start button
	case 5:
		room_goto(rm_game);
		break;
		
	// The main quit button
	case 6:
		game_end();
		break;
		
	// The game over respawn button
	case 7:
		room_restart();
		break;
		
	// The game over quit button
	case 8:
		room_goto(rm_main);
		break;
		
	// The item potion button
	case 9:
		with (obj_player) scr_player_potion(); // Use a potion
		break;
}
