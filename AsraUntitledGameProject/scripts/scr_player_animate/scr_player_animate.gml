// Animate the player sprite

// Set the player sprite index based on the current movement direction
if (isMoving)
{
	if (movementDirection >= 135 && movementDirection <= 225)
		sprite_index = sprWalkLeft;

	if (movementDirection <= 45 || (movementDirection >= 315 && movementDirection < 360))
		sprite_index = sprWalkRight;

	if (movementDirection > 45 && movementDirection < 135)
		sprite_index = sprWalkUp;

	if (movementDirection > 225 && movementDirection < 315)
		sprite_index = sprWalkDown;
		
	image_speed = 1;
}
else
	image_speed = 0;
