// Clamp the players position to stay within combat
var obj = obj_combat;
var areaWidth = 100;
var areaHeight = 50;

x = clamp(x, obj.playerPosX - (areaWidth / 2), obj.playerPosX + (areaWidth / 2));
y = clamp(y, obj.playerPosY - (areaHeight / 2), obj.playerPosY + (areaHeight / 2));
