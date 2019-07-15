// Interact with the player and go into combat

// Check if the player is nearby
var posX = global.host.x;
var posY = global.host.y;

var dist = distance_to_point(posX, posY);

// Store the user input in easy-access variables
var iSelect = global.host.iSelect;

if (dist <= interactionRange && alarm[0] <= 0)
{
	// Check for input
	if (iSelect)
		scr_enemy_combat(); // Engage into combat mode
		
	playerInRange = true;
}
else
	playerInRange = false;
