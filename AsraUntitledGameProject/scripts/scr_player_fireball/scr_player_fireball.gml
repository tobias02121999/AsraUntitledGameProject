// Shoot fireballs forward

// Shoot fireballs on user input
if (obj_manager.iSelect && ammo >= 1 && alarm[0] <= 0)
{
	var obj = instance_create_layer(x, y, "Projectiles", obj_fireball);
	obj.isFriendly = true;
	obj.movementDirection = 90;
	
	ammo--;	
}

if (ammo <= 0 && !instance_exists(obj_fireball))
{
	//instance_create_layer(0, 0, "UI", obj_menu_combat);
	
	x = obj_combat.playerPosX;
	y = obj_combat.playerPosY;
	
	target.x = obj_combat.enemyPosX;
	target.y = obj_combat.enemyPosY;
	
	playerState = "FREEZE"; // Freeze the player
	target.enemyState = "TURN"; // Make the enemy choose their next turn
}
