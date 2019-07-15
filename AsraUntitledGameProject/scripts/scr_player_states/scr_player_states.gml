// Run the current player state scripts

// Switch through the different player states and run the appropriate scripts 
switch (playerState)
{
	// The overworld player state
	case "OVERWORLD":
		scr_player_move(); // Move the player around
		scr_player_force_apply(true); // Apply force to the player
		scr_player_animate();
		scr_player_getSprites();
		scr_player_die();
		scr_player_sprint();
		break;
		
	// The frozen player state
	case "FREEZE":
		scr_player_die();
		scr_player_animate();
		break;
		
	// The dodging player state
	case "DODGE":
		scr_player_move(); // Move the player around
		scr_player_force_apply(false); // Apply force to the player
		scr_player_combatClamp();
		scr_player_die();
		scr_player_animate();
		scr_player_sprint();
		break;
		
	// The fireball player state
	case "FIREBALL":
		scr_player_move(); // Move the player around
		scr_player_force_apply(false); // Apply force to the player
		scr_player_fireball();
		scr_player_combatClamp();
		scr_player_animate();
		scr_player_sprint();
		break;
}
