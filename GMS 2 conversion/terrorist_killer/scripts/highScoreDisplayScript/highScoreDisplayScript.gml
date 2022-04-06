function highScoreDisplayScript() {
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(global.font8);

	y = 40;

	draw_set_halign(fa_right);
	draw_text(colRankPos,y,string_hash_to_newline("\\#"));
	draw_set_halign(fa_left);
	draw_text(col1Pos,y,string_hash_to_newline("Name"));
	draw_set_halign(fa_right);
	draw_text(col2Pos,y,string_hash_to_newline("Score"));
	draw_set_halign(fa_left);
	draw_text(col3Pos,y,string_hash_to_newline("Civilians Killed"));

	y += 10;

	draw_set_font(global.font6);
	for (i=newHighScoreDecile; i<=newHighScoreDecile+9; i+=1) 
	{
	  y += 20;
	  if (i == newHighScoreIndex)
	    draw_set_color(c_yellow);
	  else
	    draw_set_color(c_white);
	  draw_set_halign(fa_right);
	  draw_text(colRankPos,y,string_hash_to_newline(string(i+1)));
	  draw_set_halign(fa_left);  
	  name = ds_list_find_value(namesList,i);
	  draw_text(col1Pos,y,string_hash_to_newline(name));
	  draw_set_halign(fa_right);
	  curScore = ds_list_find_value(scoresList,i);
	  draw_text(col2Pos,y,string_hash_to_newline(curScore));
	  draw_set_halign(fa_left);
	  civsKilled = ds_list_find_value(civKillsList,i);
	  draw_text(col3Pos,y,string_hash_to_newline(civsKilled));  
	}

	draw_set_color(c_white);
	draw_set_alpha(1);
}
