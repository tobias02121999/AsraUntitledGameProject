// Initialize the player

// Get the player statistics
scr_player_statistics();

// Get the player sprites
scr_player_getSprites();

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
hp = maxHp; // The current player hp
potions = 3; // The current amount of potions the player is carrying
movementSpeed = movementSpeedWalking; // The amount of force added to the player each frame when moving
maxVelocity = maxVelocityWalking; // The maximum velocity the player can reach
isSprinting = false; // Keeps track of if the player is currently sprinting or not
playerID = 0; // The players current ID
iSelect = false;
selectPressed = false;

// Get the user input
scr_manager_getInput(playerID);
