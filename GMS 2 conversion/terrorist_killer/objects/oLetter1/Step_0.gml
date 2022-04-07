//Wrap the around screen
if (y < 0)
  if ((abs(y) + room_height) == oAlphabet1.WRAP_HEIGHT)
    y = room_height + oAlphabet1.FONT_HEIGHT + oAlphabet1.verticalSpacing;
     
speed = oAlphabet1.speed;

//Select letter if at pointer
if (oPointer.visible and abs(y - oPointer.y) <= 5)
{
  selected = true;
}
else
{
  selected = false;
}

if (oAlphabet1.finished)
  y = oPointer.y;

    
/*
//On first button press, go slow
if (goSlow and !oLetterChooser.letter1Finished) 
{
//  speed = oLetterChooser.cycleSpeedSlow;
  oPointer.x = x + 20;
  oPointer.y = 161;
  oPointer.visible = true;
}
else if (!oLetterChooser.letter1Finished)
{
//  speed = oLetterChooser.cycleSpeedFast;
  oPointer.visible = false;
  alarmSet = false;
}

if (button.pressed and button.newPress and !oLetterChooser.letter2Started and oLetterChooser.letterSelected)
{
  speed = 0;
  if (!selected)
  {
    instance_destroy();
  }
  else 
  {
    y = oPointer.y;
  }
  oLetterChooser.letter1Finished = true;
  oPointer.visible = false;
}

*/

/* */
/*  */
