// Initialize the enemy

// Initialize the enemy system variables
enemyState = "OVERWORLD"; // The enemies current state
overworldPosX = x; // The last saved X position of the enemy in the overworld
overworldPosY = y; // The last saved Y position of the enemy in the overworld
interactionRange = 16; // The range wherein the player can interact with the enemy
playerInRange = false; // If the player is in the interaction range of the enemy
dodgeLeft = false;

// Get the enemy statistics
scr_enemy_statistics();
