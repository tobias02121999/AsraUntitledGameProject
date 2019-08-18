// Initialize the control object
global.font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", true, 2);
draw_set_font(global.font);

// Get the user input
scr_control_input();
