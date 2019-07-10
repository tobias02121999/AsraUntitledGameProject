// Use a potion

// Restore a bit of health
if (potions >= 1 && hp != maxHp)
{
	potions--;
			
	if (hp + 2 <= maxHp)
		hp += 2;
	else
		hp = maxHp;
}
