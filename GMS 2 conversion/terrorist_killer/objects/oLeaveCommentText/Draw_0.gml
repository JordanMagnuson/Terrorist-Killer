draw_set_alpha(alpha);
draw_set_color(c_white);
//draw_text(room_width/2,room_height/2-50,"You didn't seriously think you were #going to get points for this.");
if (os_browser != browser_not_a_browser)
	draw_text(room_width/2,room_height/2-50,string_hash_to_newline("Thanks for playing.#Click the screen to leave a comment about this game.##Or close your browser to quit."));
else 
draw_text(room_width/2,room_height/2-50,string_hash_to_newline("Thanks for playing.#Click the screen to leave a comment about this game.##Or press ESC to quit."));
draw_set_alpha(1);
