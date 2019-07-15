// Clamp the players position to stay within combat

// Define the temporary variables
var obj = obj_combat;
var areaWidth = 100;
var areaHeight = 30;

// Clamp the players position
x = clamp(x, obj.playerPosX - (areaWidth / 2), obj.playerPosX + (areaWidth / 2));
y = clamp(y, obj.playerPosY - (areaHeight / 2), obj.playerPosY + (areaHeight / 2));
