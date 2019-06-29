// Move the player around based on the user input

// Store the user input in easy-access local variables
var iLeft = obj_manager.iLeft;
var iRight = obj_manager.iRight;
var iUp = obj_manager.iUp;
var iDown = obj_manager.iDown;

// Get the direction of movement based on the inputs
var axisX = (iRight - iLeft);
var axisY = (iDown - iUp);

movementDirection = point_direction(0, 0, axisX, axisY);

// Check if the player is currently moving
isMoving = (axisX != 0 or axisY != 0)

// Add force to the player
if (isMoving)
	scr_player_force_add(movementSpeed, movementDirection);
