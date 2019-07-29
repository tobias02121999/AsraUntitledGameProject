// Check for clients and data
var typeEvent = async_load[? "type"];
switch (typeEvent)
{
	case network_type_data:
		// Handle the data
		var buffer = async_load[? "buffer"];
		buffer_seek(buffer, buffer_seek_start, 0);
		scr_client_data(buffer);
		break;
}
