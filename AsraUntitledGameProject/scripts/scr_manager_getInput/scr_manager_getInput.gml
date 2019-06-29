// Define and update the input variables (with user input checks)
iLeft = keyboard_check(vk_left);
iRight = keyboard_check(vk_right);
iUp = keyboard_check(vk_up);
iDown = keyboard_check(vk_down);

iUpPressed = keyboard_check_pressed(vk_up);
iDownPressed = keyboard_check_pressed(vk_down);

iGender = keyboard_check_pressed(vk_f1);
iBodyType = keyboard_check_pressed(vk_f2);
iSkinTone = keyboard_check_pressed(vk_f3);

// Make the select key a switch
var select = keyboard_check(vk_space);

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
