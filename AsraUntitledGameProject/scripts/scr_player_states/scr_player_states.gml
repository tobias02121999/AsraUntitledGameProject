// Run the current player state scripts

// Switch through the different player states and run the appropriate scripts 
switch (playerState)
{
	// The overworld player state
	case "OVERWORLD":
		scr_player_move(); // Move the player around
		scr_player_force_apply(true); // Apply force to the player
		scr_player_animate(); // Animate the player sprite
		scr_player_getSprites(); // Get the player sprites
		scr_player_die(); // Check for death
		scr_player_sprint(); // Toggle sprinting
		break;
		
	// The frozen player state
	case "FREEZE":
		scr_player_animate(); // Animate the player sprite
		scr_player_die(); // Check for death
		break;
		
	// The dodging player state
	case "DODGE":
		scr_player_move(); // Move the player around
		scr_player_force_apply(false); // Apply force to the player
		scr_player_animate(); // Animate the player sprite
		scr_player_die(); // Check for death
		scr_player_sprint(); // Toggle sprinting
		scr_player_combatClamp(); // Clamp the players position to stay within combat
		break;
		
	// The fireball player state
	case "FIREBALL":
		scr_player_move(); // Move the player around
		scr_player_force_apply(false); // Apply force to the player
		scr_player_fireball(); // Shoot fireballs forward
		scr_player_combatClamp(); // Clamp the players position to stay within combat
		scr_player_animate(); // Animate the player sprite
		scr_player_sprint(); // Toggle sprinting
		break;
}
