draw_set_font(global.font5);
draw_set_color(c_black);
draw_set_halign(fa_right);
draw_set_alpha(alpha);
//draw_text(room_width/2,room_height/2-50,"You didn't seriously think you were #going to get points for this.");
draw_text(room_width - margin,room_height - margin*3,string_hash_to_newline("score: " + string(global.score)));

