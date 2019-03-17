// Follow the player

// Store the given arguments in temporary variables
var target = argument0;

// Lerp towards the player
var dist = distance_to_object(target);
var spd = dist * lerpRate;

var dir = point_direction(x, y, target.x, target.y);
var lenX = lengthdir_x(spd, dir);
var lenY = lengthdir_y(spd, dir);

if (dist > threshold)
{
	x += lenX;
	y += lenY;
}
