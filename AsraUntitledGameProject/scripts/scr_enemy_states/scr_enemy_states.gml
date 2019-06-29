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
		break;
		
	// The dodging enemy state
	case "DODGE":
		scr_enemy_dodge();
		break;
}
