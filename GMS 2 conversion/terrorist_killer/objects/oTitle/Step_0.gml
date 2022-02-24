draw_set_halign(fa_left);
scr_step_typ(typs);

if (finishedTyping and !typingReset)
{
  alarm[0] = 10;
  typingReset = true;
}
else if (finishedTyping and typingReset)
  alarm[0] -= 1;
  
if (finishedTyping)
  alarm[1] -= 1;

if (alarm[1] == 0)
  instance_create(x,y,oByLine);
  
if (button.down)
  holdToQuit -= 1;
else
  holdToQuit = 90; 
  
if (holdToQuit <= 0)
  game_end();

