scr_step_typ(typs);

if (finishedTyping and !typingReset)
{
  alarm[0] = 10 * room_speed/30;
  typingReset = true;
}
else if (finishedTyping and typingReset)
  alarm[0] -= 1;

if (alarm[0] <= 1 and typingReset and button.pressed)
  room_goto(rTitleScreen);

