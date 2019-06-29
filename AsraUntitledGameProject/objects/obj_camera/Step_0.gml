// Follow the player (if not in combat)
if (!instance_exists(obj_combat))
	scr_camera_follow(followTarget);
