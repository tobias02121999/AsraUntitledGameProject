// Run the corresponding button event
var ID = argument0;

switch (ID)
{
	// The start button
	case 0:
		room_goto(rm_start);
		break;
		
	// The quit button
	case 1:
		game_end();
		break;
}
