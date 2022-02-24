draw_set_font(global.font5);
draw_set_color(c_black);
draw_set_halign(fa_left);
alpha = 0;
fading = false;
margin = 5;

height = string_height(string_hash_to_newline("Press " + global.buttonName + " to thwart the evildoers. Hold to quit."));
width = string_width(string_hash_to_newline("Press " + global.buttonName + " to thwart the evildoers. Hold to quit."));


