// Interact with the player and go into combat

// Check if the player is nearby
var posX = obj_player.x;
var posY = obj_player.y;

var dist = distance_to_point(posX, posY);

if (dist <= interactionRange && alarm[0] <= 0)
{
	// Check for input
	if (obj_manager.iSelect)
		scr_enemy_combat(); // Engage into combat mode
		
	playerInRange = true;
}
else
	playerInRange = false;
