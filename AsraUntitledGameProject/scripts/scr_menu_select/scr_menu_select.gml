// Select a menu button

// Get user input
var iUp = obj_player.iUpPressed;
var iDown = obj_manager.iDownPressed;

var iSelect = obj_manager.iSelect;

// Scroll up or down through the menu
if (iUp)
{
	if (selectedButton >= 1)
		selectedButton--;
	else
		selectedButton = buttonAmount - 1;
}

if (iDown)
{
	if (selectedButton <= buttonAmount - 2)	
		selectedButton++;
	else
		selectedButton = 0;
}

// Execute the button script
if (iSelect)
{
	var ID = buttonID[selectedButton];
	scr_menu_buttonEvent(ID);
}
