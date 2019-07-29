// Instantiate the player client objects
var size = ds_list_size(playerClient);
if (size < clientCount)
{
	ds_list_add(playerClient, noone);	
}

for (var i = 0; i <= clientCount - 1; i++)
{
	if (ds_list_find_value(playerClient, i) == noone && clientID != i)
	{
		var obj = instance_create_layer(0, 0, "Instances", obj_playerClient);
		ds_list_set(playerClient, i, obj);
	}
}
