// Apply force to the player

// Apply the current velocity variables to the player position
for (var i = velocityX; i > 0; i--)
{
	if (!place_meeting(x + i, y, obj_solid))
		x += i;
}

for (var i = velocityX; i < 0; i++)
{
	if (!place_meeting(x + i, y, obj_solid))
		x += i;
}

for (var i = velocityY; i > 0; i--)
{
	if (!place_meeting(x, y + i, obj_solid))
		y += i;
}

for (var i = velocityY; i < 0; i++)
{
	if (!place_meeting(x, y + i, obj_solid))
		y += i;
}

// Apply friction if the player isn't moving
var dir = point_direction(0, 0, -velocityX, -velocityY);
	
if (abs(velocityX) >= fric or abs(velocityY) >= fric)
	scr_player_force_add(fric, dir);
else
{
	velocityX = 0;
	velocityY = 0;
}
