// Animate the player sprite

// Set the player sprite index based on the current movement direction
if (playerState == "FREEZE")
{
	sprite_index = sprWalkUp;
	image_speed = 0;
}
else
{
	if (isMoving)
	{
		if (movementDirection >= 135 && movementDirection <= 225)
		{
			if (isSprinting)
				sprite_index = sprRunLeft;
			else
				sprite_index = sprWalkLeft;
		}

		if (movementDirection <= 45 || (movementDirection >= 315 && movementDirection < 360))
		{
			if (isSprinting)
				sprite_index = sprRunRight;
			else
				sprite_index = sprWalkRight;
		}

		if (movementDirection > 45 && movementDirection < 135)
		{
			if (isSprinting)
				sprite_index = sprRunUp;
			else
				sprite_index = sprWalkUp;
		}

		if (movementDirection > 225 && movementDirection < 315)
		{
			if (isSprinting)
				sprite_index = sprRunDown;
			else
				sprite_index = sprWalkDown;
		}
		
		image_speed = .5;
	}
	else
		image_speed = 0;
}
