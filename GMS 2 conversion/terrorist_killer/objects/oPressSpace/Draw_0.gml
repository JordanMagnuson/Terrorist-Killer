draw_set_font(global.font5);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
if (alpha > .5)
  draw_set_alpha(.5);
else
  draw_set_alpha(alpha);
draw_set_color(c_white);
draw_rectangle(0,room_height-height*2,room_width,room_height,false);
//draw_text(room_width/2,room_height/2-50,"You didn't seriously think you were #going to get points for this.");

draw_set_alpha(alpha);
draw_set_color(c_black);
if (os_browser == browser_not_a_browser) {
	draw_text(margin,room_height - margin - height,string_hash_to_newline("Press " + global.buttonName + " to thwart the evildoers. Hold to quit."));
}
else {
	draw_text(margin,room_height - margin - height,string_hash_to_newline("Click to thwart the evildoers. (Game will start in fullscreen.)"));
}
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_valign(fa_top);