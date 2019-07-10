// Check for death

// Die when health reaches below zero
if (hp <= 0)
{	
	if (!instance_exists(obj_gameOver))
	{
		scr_combat_abort(); // Abort the current combat
		instance_create_layer(x, y, "GameOver", obj_gameOver);
	}
}
