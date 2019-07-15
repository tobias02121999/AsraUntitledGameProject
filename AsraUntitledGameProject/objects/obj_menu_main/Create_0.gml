// Inherit the parent event
event_inherited();

// Customize the menu variables
menuPosX = 480; // The X position of the menu
menuPosY = 270; // The Y position of the menu

buttonAmount = 2; // The amount of buttons to instantiate
buttonDistanceY = 75; // The distance between the buttons on the Y axis

buttonSprite[0] = spr_button; // The sprite of the button
buttonSprite[1] = spr_button; // The sprite of the button

buttonID[0] = 5; // The event ID of the button
buttonID[1] = 6; // The event ID of the button

buttonText[0] = "Start"; // The text displayed on the button
buttonText[1] = "Quit"; // The text displayed on the button

image_xscale = 3;
image_yscale = image_xscale;
