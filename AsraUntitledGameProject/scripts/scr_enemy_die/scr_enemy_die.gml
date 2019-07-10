// Check for death

// Die when health reaches below zero
if (hp <= 0)
{
	scr_combat_abort(); // Abort the current combat
	instance_destroy(); // Destroy the enemy object
}
