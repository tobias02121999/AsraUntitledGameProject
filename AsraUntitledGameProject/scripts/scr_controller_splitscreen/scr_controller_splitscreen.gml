// Switch split-screen mode on and off

// Define the temporary variables
var iJoin = global.host.iJoin;
var iLeave = global.host.iLeave;

var posX = global.host.x;
var posY = global.host.y;

// Engage split-screen mode
if (iJoin && !splitscreen && room != rm_main)
{
	global.host.playerID = 1;
	
	instance_create_layer(posX, posY, "Entities", obj_player_1);
	instance_create_layer(posX, posY, "UI", obj_camera_1);
	
	view_visible[0] = false;
	view_visible[1] = true;
	view_visible[2] = true;
	
	splitscreen = true;
}

// Disengage split-screen mode
if (iLeave && splitscreen)
{
	global.host.playerID = 0;
	
	with (obj_player_1) instance_destroy();
	with (obj_camera_1) instance_destroy();
	
	view_visible[0] = true;
	view_visible[1] = false;
	view_visible[2] = false;
	
	splitscreen = false;
}
