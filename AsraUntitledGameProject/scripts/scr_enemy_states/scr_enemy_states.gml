// Run the current enemy state scripts

// Switch through the different enemy states and run the appropriate scripts
switch (enemyState)
{
	// The overworld enemy state
	case "OVERWORLD":
		scr_enemy_interact(); // Interact with the player and go into combat
		break;
		
	// The frozen enemy state
	case "FREEZE":
		scr_enemy_die(); // Check for death
		break;
		
	// The dodging enemy state
	case "DODGE":
		scr_enemy_dodge(); // Dodge incoming fire
		scr_enemy_die(); // Check for death
		break;
		
	// The turn enemy state
	case "TURN":
		scr_enemy_turn(); // Choose the next enemy turn
		scr_enemy_die(); // Check for death
		break;
		
	// The fireball enemy state
	case "FIREBALL":
		scr_enemy_strafe(); // Strafe relative to the players position
		scr_enemy_fireball(); // Shoot a fireball at the player
		break;
}
