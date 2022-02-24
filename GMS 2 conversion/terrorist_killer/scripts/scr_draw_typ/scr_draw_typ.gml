function scr_draw_typ() {
	draw_set_color(txtcol) // Text Color
	draw_set_font(txtfnt) // The Font
	draw_set_alpha(stal) // Draw Alpha
	draw_text_ext(drx,dry,string_hash_to_newline(drwst),stsep,stmw)  // Drawing The Text
	draw_set_color(c_black) // Set Drawing Color Back To Default Color
	draw_set_alpha(1) // Set Alpha Back To Defauly Alpha



}
