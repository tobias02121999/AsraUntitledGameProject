// Move the player around based on the user input

// Get the players current movement direction
movementDirection = point_direction(0, 0, iHorizontal, iVertical);

// Check if the player is currently moving
isMoving = (iHorizontal != 0 or iVertical != 0)

// Add force to the player
if (isMoving)
	scr_player_force_add(movementSpeed, movementDirection);
