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

// Synchronise the client stats with the server
connectionTimer++;

buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 0);
buffer_write(buffer, buffer_u8, clientID);
buffer_write(buffer, buffer_u16, connectionTimer);
network_send_packet(socket, buffer, buffer_tell(buffer));
