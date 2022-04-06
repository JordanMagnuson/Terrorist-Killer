script_execute(levelCreateScriptTitle,0,0,0,0,0);
//Play call to prayer sound
audio_play_sound(global.sndCallToPrayer, 1, false);

alarm[1] = 120;
startedExplosions = false;
//Reset global variables
global.level = 0;
global.civilianKillsLevel = 0;
global.terroristKillsLevel = 0;
global.civilianKillsTotal = 0;
global.terroristKillsTotal = 0;
global.explodedCivilians = 0;
global.explodedTerrorists = 0;
global.score = 0; 
global.initials = "";

if (os_browser != browser_not_a_browser) {
	instance_create_depth(0,0,0,oHTML5StartFullscreenButton);
}