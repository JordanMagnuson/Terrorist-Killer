//if (image_index == (image_number - 1))
//  finished = true;
  
//if (!finished)
//{
  explosionLightScale = explosionLightScale * .75;
  lt_lightset(explosionLight,light_s,0,x,y,explosionLightScale,explosionLightScale,0,c_white,true);
  if (killRadius < sprite_width*.75)
  {
    killRadius = killRadius * 1.1
    do
    {
      toKill = collision_circle(x,y,killRadius,oPerson,false,false);
      if (toKill >= 0)
      {
        global.explodedCivilians += 1;
        with(toKill)
        { 
          instance_change(oPersonDying,false);
          if (fps>=room_speed)
            particleBloodScript();  
        }
      }
    }
    until (toKill < 0); 
  }
//}

//if (finished and image_index != (image_number - 1))
if (image_index == (image_number - 1))
{
  if (room != rTitleScreen)
  {
    //image_speed = 0;
    lt_lightset(explosionLight,light_s,0,x,y,explosionLightScale,explosionLightScale,0,c_white,false);     
    fadeout = instance_create(x,y,oFadeOut);
    fadeout.roomGoto = rResult;
    instance_destroy();
  }
  else
  {
    lt_lightset(explosionLight,light_s,0,x,y,explosionLightScale,explosionLightScale,0,c_white,false);     
    instance_destroy();
  }
}

