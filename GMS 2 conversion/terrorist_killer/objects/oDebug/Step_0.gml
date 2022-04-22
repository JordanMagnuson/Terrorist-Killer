if (global.debugOn)
{  
  //Skip to next level
  if (keyboard_check_pressed(ord("N")))
  {
    global.explodedTerrorists = 0;
    if (global.level >= global.lastLevel)
      global.level -= 1;
    room_goto(rBriefing);  
  } 
  
  if (keyboard_check_pressed(ord("P")))
  {
    global.level-=2;
    if (global.level < 0)
      global.level = 0;
    room_goto(rBriefing);
  }
  
  //Light debug info, since room is dark
//  lt_lightset(debugLight,sLightDebug,0,5,5,1,1,0,c_white,false);     
}
else
{
//  lt_lightset(debugLight,sLightDebug,0,5,5,1,1,0,c_white,false);    
}

