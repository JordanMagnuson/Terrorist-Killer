//if (image_index == (image_number - 1))
//  finished = true;
  
//if (!finished)
//{
  explosionLightScale = explosionLightScale * .75;
  //lt_lightset(explosionLight,light_s,0,x,y,explosionLightScale,explosionLightScale,0,c_white,true);
  if (killRadius < sprite_width*.75)
  {
    killRadius = killRadius * 1.1
    do
    {
      toKill = collision_circle(x,y,killRadius,oPerson,false,false); //RETURNS THE ID OF AN OBJECT WITHIN THE CIRCLE
      if (toKill >= 0)
      {
        global.explodedCivilians += 1;
        with(toKill)
        { 
			killed = instance_create_depth(x,y,depth, oPersonDying);
			with(killed){
				image_index = other.image_index; //pass the image_index forward
				rot = other.rot;
				fallDirection = other.fallDirection;
				fallSpeed = other.fallSpeed;
				facing = other.facing;
			}
			
			instance_destroy();
			//instance_change(oPersonDying,true);//CHANGE THE INSTANCE FROM OPERSON TO OPERSONDYING
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
    //lt_lightset(explosionLight,light_s,0,x,y,explosionLightScale,explosionLightScale,0,c_white,false);     
    fadeout = instance_create(x,y,oFadeOut);
    fadeout.roomGoto = rResult;
    instance_destroy();
  }
  else
  {
    //lt_lightset(explosionLight,light_s,0,x,y,explosionLightScale,explosionLightScale,0,c_white,false);     
    instance_destroy();
  }
}

