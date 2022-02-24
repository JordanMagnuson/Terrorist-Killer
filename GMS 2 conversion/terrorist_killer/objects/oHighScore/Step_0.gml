
if (button.released and !instance_exists(oFadeOut))
{
  fadeOut = instance_create(0,0,oFadeOut);
  fadeOut.roomGoto = rKidding;
}


alarm[0] -= 1;

if (alarm[0] <= 0 and !instance_exists(oFadeOut))
{
  fadeOut = instance_create(0,0,oFadeOut);
  fadeOut.roomGoto = rKidding;
}


