// Instantiate a wind object
instance_create_layer(x, y, "Wind", obj_wind);

// Reset the alarm
alarm[0] = random_range(spawnDurationMin, spawnDurationMax);
