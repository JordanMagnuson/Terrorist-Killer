scr_step_typ(typs);

if (oByLine.finishedTyping)
{ 
  if (finishedTyping and !typingReset)
  {
    alarm[0] = 10;
    typingReset = true;
  }
  else if (finishedTyping and typingReset)
    alarm[0] -= 1;
}

if (finishedTyping)
  alarm[1] -= 1;
  
if (alarm[1] == 0)
  instance_create(x,y,oPressSpace);

