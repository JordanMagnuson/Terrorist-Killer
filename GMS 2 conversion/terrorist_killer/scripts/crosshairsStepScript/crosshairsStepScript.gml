function crosshairsStepScript() {
	//Deactivate instances that aren't close by
	/*
	instance_deactivate_object(oPerson);
	activeLeft = x - killRadius - jerkRadius;
	activeTop = y - killRadius - jerkRadius;
	activeWidth = x + killRadius + jerkRadius - activeLeft;
	activeHeight = y + killRadius + jerkRadius - activeTop;
	instance_activate_region(activeLeft,activeTop,activeWidth,activeHeight,true);

	instance_activate_object(button);
	instance_activate_object(oGame);
	instance_activate_object(oDebug);
	instance_activate_object(oLighting);
	instance_activate_object(oLevel);
	*/


	//Minimum shoot time
	if (button.down and oLevel.alarm[0] <= 0)
	{
	  firing = true;
	  alarm[5] = 8;
	}
	if (alarm[5] <= 0)
	  firing = false;
  
	alarm[5] -= 1;

	//Check if mission finished
	if (global.terroristKillsLevel == global.numberOfTerrorists)
	{
	  if (global.level >= global.lastLevel)
	  {
	    whiteFlash = instance_create(0,0,oWhiteFlash);
	    whiteFlash.howLong = 6;
	    instance_create(0,0,oEnterName);
	    //lt_sysset(0,-1,make_color_rgb(10,10,10),true,true,1,-10);  
	    with(oLighting) instance_destroy();  
	    firing = false;    
	    audio_stop_sound(global.sndMachineGun);
	    instance_destroy();
	  }
	  else
	  {
	    fadeOut = instance_create(x,y,oFadeOut);
	    fadeOut.roomGoto = rBriefing;
	  }
	}
	//Wrap around screen
	else if ((x > room_width + sprite_width/2) and (y < room_height-sprite_width/2))
	{
	  x = -sprite_width/2
	  y += sprite_height/2;
	}
	/*
	else if (x > room_width + sprite_width/2)
	{
	  passCounter += 1;
	  if (passCounter == global.crosshairPasses)
	  {
	    fadeOut = instance_create(x,y,oFadeOut);
	    fadeOut.roomGoto = rResult;
	    oCrosshairs.y = room_height + sprite_height*2;
	  }
	  else if (!instance_exists(oFadeOut))
	    y = sprite_height/4;
	}  
	*/
  
	//Shooting  
	if (firing == true)
	{
	  //Sound

	  if (!audio_is_playing(global.sndMachineGun)) {
	    audio_play_sound(global.sndMachineGun, 1, true);
		}

	  //New image
	  sprite_index = sCrosshairsFire;
	  image_speed = 1/2;
	  //Jerk crosshairs
	  if (goBack == 1)
	  {
	    x = xOrig;
	    y = yOrig;
	  }
	  else
	  {
	    xOrig = x + hspeed;
	    yOrig = y + vspeed;
	    if (choose(1,2)==1)
	      x -= random(jerkRadius);
	    else 
	      x += random(jerkRadius);
	    if (choose(1,2)==1)
	      y -= random(jerkRadius);
	    else 
	      y += random(jerkRadius); 
	  }
	  goBack = -goBack;
	  //Kill
	  do
	  {
	    toKill = collision_circle(x,y,killRadius,oPerson,false,false);
	    if (toKill >= 0)
	    {
	      if (toKill.object_index = oTerrorist)
	      {
	        if (global.SHOW_SCORE) instance_create(toKill.x,toKill.y,oPlusPoints);
	        global.terroristKillsLevel += 1;
	        global.terroristKillsTotal += 1;
	      }
	      else if (ds_list_find_index(global.childImagesList,toKill.image_index) >= 0)
	      {
	        if (global.SHOW_SCORE) instance_create(toKill.x,toKill.y,oMinusPointsChildren);
	        global.civilianKillsLevel += 1;
	        global.civilianKillsTotal += 1;      
	      }
	      else
	      {
	        if (global.SHOW_SCORE) instance_create(toKill.x,toKill.y,oMinusPoints);
	        global.civilianKillsLevel += 1;
	        global.civilianKillsTotal += 1;
	      }
	      with(toKill)
	      { 
	        //instance_change(oPersonDying,false);
			killed = instance_create_depth(x,y,depth, oPersonDying);
			with(killed){
				image_index = other.image_index; //pass the image_index forward
				rot = other.rot;
				fallDirection = other.fallDirection;
				fallSpeed = other.fallSpeed;
				facing = other.facing;
			}
	        if (fps>=room_speed)
	          particleBloodScript();
			instance_destroy();
	      }
	    }
	  }
	  until (toKill < 0);
  
	  //Create casings, effects
	  effect_create_above(ef_smoke,x,y,0,make_color_rgb(246,195,81));  
	  instance_create(x,y,o_bcase);

	}
	else
	{ 
	  audio_stop_sound(global.sndMachineGun);
	  sprite_index = sCrosshairs;
	  xOrig = x;
	  yOrig = y;  
	  goBack = -1;
	}

	//Check for terrorists not killed
	for (i=0; i<instance_count; i+=1)
	  {
	    iii = instance_id_get( i );
	    if (instance_exists(iii))
	      if (iii.object_index == oTerrorist)
	      {
	//        if ((iii.x < (x - killRadius - jerkRadius) and iii.y < (y + killRadius + jerkRadius)) or
	//            (iii.y < (y - killRadius - jerkRadius)) or (x > room_width+sprite_width))
	        if ((iii.y < (y - killRadius - jerkRadius)) or (x > room_width+sprite_width))
	        {
	          if (!iii.alarmExplodeSet)
	          {
	            iii.alarmExplodeSet = true;       
	            iii.alarmExplode = 45 + random(60);
	          }
	        }
	      }
	  }



}
