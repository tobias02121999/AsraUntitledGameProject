// Initialize the client object
var type = network_socket_tcp;
var ip = "192.168.0.54";
var port = 8000;
socket = network_create_socket(type);
connection = network_connect(socket, ip, port);

var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);

clientID = 0;
clientCount = 0;

playerClient = ds_list_create();

connectionTimer = 0;
