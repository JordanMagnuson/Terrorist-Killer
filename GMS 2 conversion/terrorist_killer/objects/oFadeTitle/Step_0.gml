if (fading)
  alpha -= .01;
else
  alpha += .01;

if (alpha >= 1.3 and !fading)
{
  room_restart();
  fading = true;
}

