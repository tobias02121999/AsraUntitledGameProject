// Run the current player state scripts

// Switch through the different player states and run the appropriate scripts 
switch (playerState)
{
	// The default player state
	case "DEFAULT":
		scr_player_move(); // Move the player around
		scr_player_force_apply(); // Apply force to the player
		scr_player_animate();
		break;
}
