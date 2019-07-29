// Handle the received data
var buffer = argument0; 
var messageID = buffer_read(buffer, buffer_u8);
var clientID = buffer_read(buffer, buffer_u8);

switch (messageID)
{
	case 2:
		// Verify the player input
		var iHorizontal = buffer_read(buffer, buffer_f32);
		var iVertical = buffer_read(buffer, buffer_f32);
		
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, 2);
		buffer_write(buffer, buffer_u8, clientID);
		buffer_write(buffer, buffer_f32, iHorizontal);
		buffer_write(buffer, buffer_f32, iVertical);
		
		var target = ds_list_find_value(socket, clientID);
		network_send_packet(target, buffer, buffer_tell(buffer));
		break;
		
	case 3:
		// Verify and synchronise the player with the server
		var posX = buffer_read(buffer, buffer_u16);
		var posY = buffer_read(buffer, buffer_u16);
		
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, 3);
		buffer_write(buffer, buffer_u8, clientID);
		buffer_write(buffer, buffer_u16, posX);
		buffer_write(buffer, buffer_u16, posY);
		
		for (var i = 0; i <= clientCount - 1; i++)
		{
			if (i != clientID)
			{
				var target = ds_list_find_value(socket, i);
				network_send_packet(target, buffer, buffer_tell(buffer));
			}
		}
		
		break;
}
