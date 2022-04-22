if (fading)
  alpha -= .02 * 30/room_speed;
else
  alpha += .02 * 30/room_speed;

if (alpha <= 0 and fading)
{
  instance_create(0,0,oTitle);
  instance_destroy();
}

