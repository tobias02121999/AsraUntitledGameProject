// Verify and synchronise the player data with the server
var buffer = obj_client.buffer;
var socket = obj_client.socket;
var clientID = obj_client.clientID;

buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 3);
buffer_write(buffer, buffer_u8, clientID);
buffer_write(buffer, buffer_u16, x);
buffer_write(buffer, buffer_u16, y);
network_send_packet(socket, buffer, buffer_tell(buffer));
