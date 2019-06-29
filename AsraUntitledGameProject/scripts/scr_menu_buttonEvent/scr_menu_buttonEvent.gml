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
		var player = obj_player;
		var enemy = player.target;
		
		player.x = player.overworldPosX;
		player.y = player.overworldPosY;
		
		enemy.x = enemy.overworldPosX;
		enemy.y = enemy.overworldPosY;
		
		player.playerState = "OVERWORLD";
		enemy.enemyState = "OVERWORLD";
		
		enemy.alarm[0] = 2;
		
		with (obj_combat) instance_destroy();
		with (self) instance_destroy();
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
}
