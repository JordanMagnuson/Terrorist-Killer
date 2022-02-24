//Wrap the around screen
if (y < 0)
  if ((abs(y) + room_height) == oAlphabet3.WRAP_HEIGHT)
    y = room_height + oAlphabet3.FONT_HEIGHT + oAlphabet3.verticalSpacing;
    
speed = oAlphabet3.speed;

//Select letter if at pointer
if (oPointer.visible and y == oPointer.y)
{
  selected = true;
}
else
{
  selected = false;
}

if (oAlphabet3.finished)
  y = oPointer.y;

