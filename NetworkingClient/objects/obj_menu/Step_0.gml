// Select the previous or next button
var iMenuUp = obj_control.iMenuUp;
var iMenuDown = obj_control.iMenuDown;

if (iMenuUp)
{
	if (selected > 0)
		selected--;
	else
		selected = buttonAmount - 1;
}

if (iMenuDown)
{
	if (selected < (buttonAmount - 1))
		selected++;
	else
		selected = 0;
}

// Run the button event when pressed
var iMenuSelect = obj_control.iMenuSelect;

if (iMenuSelect)
	scr_menu_buttonEvent(selected); // Run the corresponding button event
