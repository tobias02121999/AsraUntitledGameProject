// Set the depth of the tree
depth = -y;

// Rotate the tree
var dist = abs(image_angle - angleTarget);
var spd = dist * angleSpeed;

if (image_angle <= angleTarget - spd)
	image_angle += spd;

if (image_angle > angleTarget + spd)
	image_angle -= spd;

if (dist <= .5)
	angleTarget = random_range(-5, 5);

// Set the tree opacity
if (instance_exists(obj_combat))
	image_alpha = .35;
else
	image_alpha = 1;
