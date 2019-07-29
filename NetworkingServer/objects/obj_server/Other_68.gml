// Check for clients and data
var typeEvent = async_load[? "type"];
switch (typeEvent)
{
	case network_type_connect:
		// Add the client to the socket variable
		if (clientCount <= maxClients - 1)
		{
			ds_list_add(socket, async_load[? "socket"]);
			ds_list_add(connectionTimer, 0);
			
			var ID = ds_list_size(socket) - 1;
			var target = ds_list_find_value(socket, ID);
			
			buffer_seek(buffer, buffer_seek_start, 0);
			buffer_write(buffer, buffer_u8, 0);
			buffer_write(buffer, buffer_u8, ID);
			network_send_packet(target, buffer, buffer_tell(buffer));
		}
		break;
		
	case network_type_disconnect:
		// Remove the client from the socket variable
		break;
		
	case network_type_data:
		// Handle the data
		var receivedBuffer = async_load[? "buffer"];
		buffer_seek(buffer, buffer_seek_start, 0);
		scr_server_data(receivedBuffer);
		break;
}
