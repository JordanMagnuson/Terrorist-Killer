draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(global.font8);

y = 40;

draw_set_halign(fa_right);
draw_text(colRankPos,y,"\#");
draw_set_halign(fa_left);
draw_text(col1Pos,y,"Name");
draw_set_halign(fa_right);
draw_text(col2Pos,y,"Score");
draw_set_halign(fa_left);
draw_text(col3Pos,y,"Civilians Killed");

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
  draw_text(colRankPos,y,string(i+1));
  draw_set_halign(fa_left);  
  name = ds_list_find_value(namesList,i);
  draw_text(col1Pos,y,name);
  draw_set_halign(fa_right);
  curScore = ds_list_find_value(scoresList,i);
  draw_text(col2Pos,y,curScore);
  draw_set_halign(fa_left);
  civsKilled = ds_list_find_value(civKillsList,i);
  draw_text(col3Pos,y,civsKilled);  
}
