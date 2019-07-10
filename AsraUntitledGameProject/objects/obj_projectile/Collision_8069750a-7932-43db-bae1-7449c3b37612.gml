// Deal damage

// Check if the projectile is from the enemy
if (!isFriendly)
{
	// Subtract the enemy hp
	other.hp -= damage;

	// Destroy the projectile
	instance_destroy();
}
