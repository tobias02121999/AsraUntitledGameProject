// Draw the menu buttons

// Loop through all of the buttons and draw them
for (var i = 0; i < buttonAmount; i++)
{
	var spr = buttonSprite[i];
	var img = (selectedButton == i);
	
	var posX = menuPosX + (buttonDistanceX * i);
	var posY = menuPosY + (buttonDistanceY * i);
	
	draw_sprite_ext(spr, img, posX, posY, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	
	var textPosX = posX + textOffsetX;
	var textPosY = posY + textOffsetY;
	var text = buttonText[i];
	
	draw_set_halign(fa_center);
	draw_text_transformed(textPosX, textPosY, text, fontSize, fontSize, image_angle);
	draw_set_halign(fa_left);
}
