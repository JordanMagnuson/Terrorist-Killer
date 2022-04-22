scr_step_typ(typs);

if (finishedTyping and !typingReset)
{
  alarm[0] = 8 * room_speed/300;
  typingReset = true;
}

else if (finishedTyping and typingReset)
  alarm[0] -= 1;

if (alarm[0] <= 0 and instance_number(oChomskyText) < 1)
  instance_create(x,y,oChomskyText);


