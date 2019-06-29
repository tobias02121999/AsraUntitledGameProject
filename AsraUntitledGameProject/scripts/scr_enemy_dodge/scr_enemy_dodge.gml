// Dodge incoming fire

// Move the enemy to the left and right
var obj = obj_combat;

if (dodgeLeft)
{
	x -= dodgeSpeed;
	
	if (x <= obj.enemyPosX - (dodgeArea / 2))
		dodgeLeft = false;	
}
else
{
	x += dodgeSpeed;
	
	if (x >= obj.enemyPosX + (dodgeArea / 2))
		dodgeLeft = true;	
}
