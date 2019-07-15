// Inherit the parent event
event_inherited();

// Customize the menu variables
menuPosX = 150; // The X position of the menu
menuPosY = 175; // The Y position of the menu

buttonAmount = 3; // The amount of buttons to instantiate
buttonDistanceY = 75; // The distance between the buttons on the Y axis

buttonSprite[0] = spr_button; // The sprite of the button
buttonSprite[1] = spr_button; // The sprite of the button
buttonSprite[2] = spr_button; // The sprite of the button

buttonID[0] = 0; // The event ID of the button
buttonID[1] = 1; // The event ID of the button
buttonID[2] = 2; // The event ID of the button

buttonText[0] = "Attack"; // The text displayed on the button
buttonText[1] = "Item"; // The text displayed on the button
buttonText[2] = "Flee"; // The text displayed on the button

image_xscale = 3;
image_yscale = image_xscale;
