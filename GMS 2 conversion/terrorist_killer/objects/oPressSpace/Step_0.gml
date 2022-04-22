if (fading)
  alpha -= .02 * 30/room_speed;
else
  alpha += .02 * 30/room_speed;

if (alpha >= 2 and !fading)
  fading = true;
  
if (alpha <= -1 and fading)
  fading = false;
  
if (button.released)
{
  global.explodedCivilians = 0;
  global.explodedTerrorists = 0;
  global.level = 0;   //Reset level
  room_goto_next();
}  

