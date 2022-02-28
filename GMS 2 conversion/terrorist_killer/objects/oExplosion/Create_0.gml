image_speed = 1/2;
finished = false;
explosionLightScale = 1;
//explosionLight = lt_lightadd(light_s,0,x,y,explosionLightScale,explosionLightScale,0,c_white,true);
killRadius = sprite_width/4;
if (room != rTitleScreen)
  global.explodedTerrorists += 1;
  
//SS_PlaySound(global.sndExplosion)