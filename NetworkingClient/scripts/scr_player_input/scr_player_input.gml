// Get the player input
gamepad_set_axis_deadzone(0, .25);

var iHorizontal = (((keyboard_check(vk_right) - keyboard_check(vk_left)) + gamepad_axis_value(0, gp_axislh)) / 2);
var iVertical = (((keyboard_check(vk_down) - keyboard_check(vk_up)) + gamepad_axis_value(0, gp_axislv)) / 2);

var buffer = obj_client.buffer;
var socket = obj_client.socket;
var clientID = obj_client.clientID;

buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 2);
buffer_write(buffer, buffer_u8, clientID);
buffer_write(buffer, buffer_f32, iHorizontal);
buffer_write(buffer, buffer_f32, iVertical);
network_send_packet(socket, buffer, buffer_tell(buffer));
