// Strafe relative to the players position
var player = obj_player;
var targetX = player.x;
var dist = distance_to_object(player);
var spd = 1 / (dist * .25);

x = lerp(x, targetX, spd);
