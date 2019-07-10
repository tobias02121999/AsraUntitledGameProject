// Shoot a fireball at the player

// Shoot a fireball at a random interval
if (alarm[0] <= 0)
	alarm[0] = random_range(fireballAlarmMin, fireballAlarmMax);

if (alarm[0] >= .1 && alarm[0] <= 1 && ammo >= 1)
{
	var obj = instance_create_layer(x, y, "Projectiles", obj_fireball);
	obj.movementDirection = 270;

	ammo--;
}

if (ammo <= 0 && !instance_exists(obj_fireball))
{
	instance_create_layer(0, 0, "UI", obj_menu_combat);
	
	var player = obj_player;
	
	player.x = obj_combat.playerPosX;
	player.y = obj_combat.playerPosY;
	
	x = obj_combat.enemyPosX;
	y = obj_combat.enemyPosY;
	
	player.playerState = "FREEZE"; // Freeze the player
	enemyState = "FREEZE"; // Make the enemy choose their next turn
}
