image_speed = 30/room_speed *  1/2;
finished = false;
explosionLightScale = 1;
//explosionLight = lt_lightadd(light_s,0,x,y,explosionLightScale,explosionLightScale,0,c_white,true);
fake_light_ini(id, light_s1_with_transparency, explosionLightScale, explosionLightScale, c_white, 1);
killRadius = sprite_width/4;
if (room != rTitleScreen)
  global.explodedTerrorists += 1;
  
audio_play_sound(global.sndExplosion, 1, false);

depth = -1;