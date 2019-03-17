// Add force to the player

// Define the temporary variables
var force = argument0;
var dir = argument1;

// Add force to the players current velocity variables
var lenX = lengthdir_x(force, dir);
var lenY = lengthdir_y(force, dir);

velocityX = clamp(velocityX + lenX, -maxVelocity, maxVelocity);
velocityY = clamp(velocityY + lenY, -maxVelocity, maxVelocity);
