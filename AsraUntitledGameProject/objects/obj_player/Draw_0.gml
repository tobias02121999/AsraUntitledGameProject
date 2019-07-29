// Draw the player shadow
draw_sprite_ext(sprite_index, image_index, x, (y + (sprite_get_height(sprite_index) / 2) + 6), image_xscale, -(image_yscale / 2), 0, c_black, .35);

// Draw the player
draw_self();

draw_set_font(-1);
draw_text(mouse_x, mouse_y, instance_number(obj_enemy));
