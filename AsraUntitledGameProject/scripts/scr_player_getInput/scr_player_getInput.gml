// Define and update the input variables (with user input checks)

// Get the current ID from the player
var ID = argument0;

// Set the gamepad axis deadzone
gamepad_set_axis_deadzone(0, .25);

// Initialize the local select variable (for the select switch)
var select;

// Get the corresponding input
switch (ID)
{
	// Get input from either keyboard or gamepad
	case 0:
		// Store all the input in variables
		iHorizontal = (((keyboard_check(vk_right) - keyboard_check(vk_left)) + gamepad_axis_value(0, gp_axislh)) / 2);
		iVertical = (((keyboard_check(vk_down) - keyboard_check(vk_up)) + gamepad_axis_value(0, gp_axislv)) / 2);

		iSprint = (keyboard_check(vk_shift) || gamepad_button_check(0, gp_shoulderlb));

		iUpPressed = (keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu));
		iDownPressed = (keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd));

		iJoin = keyboard_check_pressed(vk_enter);	
		iLeave = false;

		select = (keyboard_check(vk_space) || gamepad_button_check(0, gp_face1));
		break;
		
	// Get input from the keyboard
	case 1:
		// Store all the input in variables
		iHorizontal = (keyboard_check(vk_right) - keyboard_check(vk_left));
		iVertical = (keyboard_check(vk_down) - keyboard_check(vk_up));

		iSprint = keyboard_check(vk_shift);

		iUpPressed = keyboard_check_pressed(vk_up);
		iDownPressed = keyboard_check_pressed(vk_down);
		
		iLeave = keyboard_check_pressed(vk_backspace);
		
		select = keyboard_check(vk_space);
		break;
		
	// Get input from the gamepad
	case 2:
		// Store all the input in variables
		iHorizontal = gamepad_axis_value(0, gp_axislh);
		iVertical = gamepad_axis_value(0, gp_axislv);

		iSprint = gamepad_button_check(0, gp_shoulderlb);

		iUpPressed = gamepad_button_check_pressed(0, gp_padu);
		iDownPressed = gamepad_button_check_pressed(0, gp_padd);

		select = gamepad_button_check(0, gp_face1);
		break;
}

// Control the menu select switch
if (select)
{
	if (!selectPressed)
	{
		iSelect = true;
		selectPressed = true;
	}
	else
		iSelect = false;
}
else
	selectPressed = false;
