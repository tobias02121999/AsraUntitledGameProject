// Initialize the game over object

// Disable the player
var player = obj_player;
player.playerState = "FREEZE";

// Instantiate the game over menu
instance_create_layer(0, 0, "UI", obj_menu_gameOver);
