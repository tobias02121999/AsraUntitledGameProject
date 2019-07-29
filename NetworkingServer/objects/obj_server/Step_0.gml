// Synchronise the server stats with the clients
clientCount = ds_list_size(socket);

buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 1);
buffer_write(buffer, buffer_u8, 0);
buffer_write(buffer, buffer_u8, clientCount);

for (var i = 0; i <= clientCount - 1; i++)
{
	var target = ds_list_find_value(socket, i);
	network_send_packet(target, buffer, buffer_tell(buffer));
}
