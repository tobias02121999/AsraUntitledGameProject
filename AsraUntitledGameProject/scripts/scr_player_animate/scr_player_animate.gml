// Animate the player sprite

// Set the player sprite index based on the current movement direction
if (isMoving)
{
	if (movementDirection >= 135 && movementDirection <= 225)
		sprite_index = spr_player_left;

	if (movementDirection <= 45 || (movementDirection >= 315 && movementDirection < 360))
		sprite_index = spr_player_right;

	if (movementDirection > 45 && movementDirection < 135)
		sprite_index = spr_player_up;

	if (movementDirection > 225 && movementDirection < 315)
		sprite_index = spr_player_down;
}
