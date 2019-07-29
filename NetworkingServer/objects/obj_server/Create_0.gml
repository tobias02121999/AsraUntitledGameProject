// Initialize the server object
var type = network_socket_tcp;
var port = 8000;
maxClients = 10;
server = network_create_server(type, port, maxClients);
socket = ds_list_create();

var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);

clientCount = 0;
