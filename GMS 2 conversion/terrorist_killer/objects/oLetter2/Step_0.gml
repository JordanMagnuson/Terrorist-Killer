//Wrap the around screen
if (y < 0)
  if ((abs(y) + room_height) == oAlphabet2.WRAP_HEIGHT)
    y = room_height + oAlphabet2.FONT_HEIGHT + oAlphabet2.verticalSpacing;
    
speed = oAlphabet2.speed;

//Select letter if at pointer
if (oPointer.visible and y == oPointer.y)
{
  selected = true;
}
else
{
  selected = false;
}

if (oAlphabet2.finished)
  y = oPointer.y;

