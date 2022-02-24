//Spotlight
lt_lightset(mouse_light,light_s2,0,oCrosshairs.x,oCrosshairs.y,.3,.3,0,c_white,true);

//Firing light
if (oCrosshairs.firing and random(10)>2)
  lightOn = true;
else
  lightOn = false;
lt_lightset(firing_light,light_s2,0,oCrosshairs.x,oCrosshairs.y,.2,.2,0,c_white,lightOn);

//Debug Light
if (global.debugOn)
  lt_lightset(debugLight,sLightDebug,0,5,5,1,1,0,c_white,true);
else
  lt_lightset(debugLight,sLightDebug,0,5,5,1,1,0,c_white,false);  

