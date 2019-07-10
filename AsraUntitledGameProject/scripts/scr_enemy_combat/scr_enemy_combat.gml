// Engage into combat mode

// Get the player object
var player = obj_player;

// Set the overworld positions of the player and the enemy
player.overworldPosX = player.x;
player.overworldPosY = player.y;

overworldPosX = x;
overworldPosY = y;

// Set the players current combat target
player.target = self.id;

// Instantiate the combat object
var posX = obj_camera.x;
var posY = obj_camera.y;

var obj = instance_create_layer(posX, posY, "Combat", obj_combat);

// Teleport the player and the enemy to their combat positions
var playerPosX = obj.playerPosX;
var playerPosY = obj.playerPosY;

var enemyPosX = obj.enemyPosX;
var enemyPosY = obj.enemyPosY;

player.x = playerPosX;
player.y = playerPosY;

x = enemyPosX;
y = enemyPosY;

// Freeze the player and the enemy
player.playerState = "FREEZE";
enemyState = "FREEZE";

player.movementDirection = 90;
