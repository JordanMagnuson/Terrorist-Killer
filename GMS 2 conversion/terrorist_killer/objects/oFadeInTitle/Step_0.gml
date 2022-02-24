if (fading)
  alpha -= .02;
else
  alpha += .02;

if (alpha <= 0 and fading)
{
  instance_create(0,0,oTitle);
  instance_destroy();
}

