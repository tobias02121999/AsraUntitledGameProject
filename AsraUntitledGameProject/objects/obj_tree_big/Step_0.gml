// Set the depth of the tree
depth = -y;

// Rotate the tree
var dist = abs(angle - angleTarget);
var spd = dist * angleSpeed;

if (angle <= angleTarget - spd)
	angle += spd;

if (angle > angleTarget + spd)
	angle -= spd;

if (dist <= .5)
	angleTarget = random_range(-windStrength, windStrength);

// Set the tree opacity
if (instance_exists(obj_combat))
	image_alpha = .35;
else
	image_alpha = 1;
