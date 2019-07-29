// Handle the received data
var buffer = argument0; 
var messageID = buffer_read(buffer, buffer_u8);
var _clientID = buffer_read(buffer, buffer_u8);

switch (messageID)
{
	case 0:
		clientID = _clientID;
		break;

	case 1:
		clientCount = buffer_read(buffer, buffer_u8);
		break;

	case 2:
		if (_clientID == clientID)
		{
			obj_player.iHorizontal = buffer_read(buffer, buffer_f32);
			obj_player.iVertical = buffer_read(buffer, buffer_f32);
		}
		break;
		
	case 3:
		var size = ds_list_size(playerClient);
		if (clientID <= size - 1)
		{
			var obj = ds_list_find_value(playerClient, _clientID);
		
			obj.x = buffer_read(buffer, buffer_u16);
			obj.y = buffer_read(buffer, buffer_u16);
		}
		break;
}
