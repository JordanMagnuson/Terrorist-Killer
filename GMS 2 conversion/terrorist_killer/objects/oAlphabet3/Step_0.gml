if (finished)
{
  exit;
}

//Is any letter selected?
someLetterSelected = false;
for (i=0; i<instance_count; i+=1)
{
  iii = instance_id_get( i );
  if (instance_exists(iii))
  {
    if (iii.object_index == oLetter3)
    {
      if (iii.selected)
        someLetterSelected = true;
    }
  }
}

//Finished
if (goSlow and button.pressed and button.newPress and !finished and someLetterSelected)
{
  for (i=0; i<instance_count; i+=1)
  {
    iii = instance_id_get( i );
    if (instance_exists(iii))
    {
      if (iii.object_index == oLetter3)
      {
        with(iii)
        {
          if (!selected)
            instance_destroy();
        } 
      }
    }
  }
  finished = true;
  oPointer.visible = false;
  speed = 0;
  y = oPointer.y;  
  exit;
}

//goSlow?
if (button.pressed and button.newPress and !goSlow)
{
  alarmGoSlow = goSlowTime;
  goSlow = true;
}
if (goSlow)
{
  alarmGoSlow -= 1;
}
if (alarmGoSlow <= 0)
{
  goSlow = false;
}
    
if (goSlow)
{
  //Make pointer visible
  oPointer.x = x + pointerMargin;
  oPointer.visible = true;

  //Stop at "grid" points    
  if ((y mod (FONT_HEIGHT + verticalSpacing) == 0) and !stopped)
  {
    if (goSlow)
    {
      alarmStopLength = delaySpeedSlow;
    }
    else
    {
      alarmStopLength = delaySpeedFast;
    }
    stopped = true;  
  }
  if (stopped)
  {
    speed = 0;
    alarmStopLength -= 1;
  }
  if (alarmStopLength <= 0)
  {
    stopped = false;
    speed = letterSpeed;
  }
}
else
{
  speed = letterSpeed;
  oPointer.visible = false;
}

//Wrap the around screen
if (y < 0)
  if ((abs(y) + room_height) == WRAP_HEIGHT)
    y = room_height + FONT_HEIGHT + verticalSpacing;

