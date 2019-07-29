// Check for death

// Die when health reaches below zero
if (hp <= 0)
{
	/*
	if (room == rm_game)
		instance_destroy();
	*/
	
	scr_combat_abort(); // Abort the current combat
}
