// Draw the tree shadow
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, -(image_yscale / 2), 0, c_black, .35);

// Draw the tree
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, angle, c_white, image_alpha);
