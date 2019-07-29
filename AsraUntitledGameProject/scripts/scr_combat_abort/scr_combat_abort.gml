// Abort the current combat

// Reset the player and enemy
var player = obj_player;
var enemy = player.target;
		
player.x = player.overworldPosX;
player.y = player.overworldPosY;
		
enemy.x = enemy.overworldPosX;
enemy.y = enemy.overworldPosY;

player.playerState = "OVERWORLD";
enemy.enemyState = "OVERWORLD";
		
enemy.alarm[0] = 2;

// Destroy the combat UI elements
with (obj_combat) instance_destroy();
with (obj_menu) instance_destroy();

with (enemy) instance_destroy();

room_goto(rm_game);
