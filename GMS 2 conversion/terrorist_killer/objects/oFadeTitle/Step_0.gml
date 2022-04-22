if (fading)
  alpha -= .01 * 30/room_speed;
else
  alpha += .01 * 30/room_speed;

if (alpha >= 1.3 and !fading)
{
  room_restart();
  fading = true;
}

