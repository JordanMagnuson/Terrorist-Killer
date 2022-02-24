draw_set_alpha(1);
if (global.debugOn and room == rLevel)
{
  //Display debug info
  draw_set_color(c_white);
//  draw_set_alpha(0.50);
  draw_rectangle(5,5,98,46,false);
  
  x = 7;
  y = 7;
  
  draw_set_halign(fa_left);
  draw_set_color(c_black);
  draw_set_font(global.font5);
  //FPS
  if (fps < room_speed)
    draw_set_color(c_red);
  draw_text(x,y,string_hash_to_newline("FPS: " + string(fps)));
  //Time Played 
  draw_set_color(c_black);
  if (global.minutesPlayed > 5)
    draw_set_color(c_red);
  if (global.secondsPlayed > 9)
    draw_text(x,y,string_hash_to_newline("#Time Played: " + string(global.minutesPlayed) + ":" + string(global.secondsPlayed)));
  else
    draw_text(x,y,string_hash_to_newline("#Time Played: " + string(global.minutesPlayed) + ":0" + string(global.secondsPlayed)));
  //Level
  draw_set_color(c_black);
  draw_text(x,y,string_hash_to_newline("##Level: " + string(global.level)));
}

  

