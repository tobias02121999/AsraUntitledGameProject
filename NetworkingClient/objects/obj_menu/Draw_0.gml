// Draw the buttons
for (var i = 0; i < buttonAmount; i++)
{
	var yOffset = spacing * i;
	draw_sprite(spr_button, (selected == i), xPos, yPos + yOffset);
	
	draw_set_halign(fa_center);
	draw_text(xPos, yPos + yOffset, buttonText[i]);
	draw_set_halign(fa_left);
}
