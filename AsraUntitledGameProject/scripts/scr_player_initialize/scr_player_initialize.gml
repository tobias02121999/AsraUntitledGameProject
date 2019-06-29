// Initialize the player

// Define the player system variables
playerState = "OVERWORLD"; // The players current state
velocityX = 0; // The players current X velocity
velocityY = 0; // The players current Y velocity
movementDirection = 0; // The players current movement direction (in degrees)
isMoving = false; // Keeps track of if the player is currently moving
overworldPosX = x; // The last saved X position of the player in the overworld
overworldPosY = y; // The last saved Y position of the player in the overworld
target = noone; // The current combat target of the player
ammo = 0; // The current ammo of the player, used for projectile abilities

// Get the player statistics
scr_player_statistics();

// Get the player sprites
scr_player_getSprites();
