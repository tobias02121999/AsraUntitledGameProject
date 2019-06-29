// Run the current player state scripts

// Switch through the different player states and run the appropriate scripts 
switch (playerState)
{
	// The overworld player state
	case "OVERWORLD":
		scr_player_move(); // Move the player around
		scr_player_force_apply(true); // Apply force to the player
		scr_player_animate();
		scr_player_customize();
		scr_player_getSprites();
		break;
		
	// The frozen player state
	case "FREEZE":
		break;
		
	// The fireball player state
	case "FIREBALL":
		scr_player_move(); // Move the player around
		scr_player_force_apply(false); // Apply force to the player (horizontal)
		scr_player_fireball();
		scr_player_combatClamp();
		break;
}
