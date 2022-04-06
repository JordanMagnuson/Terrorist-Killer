//Timer
global.minutesPlayed = 0;
global.secondsPlayed = 0;
global.timer = 0;

//Fonts
global.font5=font_add_sprite(sFontCasualEncounter5,ord("!"),1,2);
global.font6=font_add_sprite(sFontCasualEncounter6,ord("!"),1,2);
global.font8=font_add_sprite(sFontCasualEncounter8,ord("!"),1,2);

//Global variables
global.level = 0;
global.civilianKillsLevel = 0;
global.terroristKillsLevel = 0;
global.civilianKillsTotal = 0;
global.terroristKillsTotal = 0;
global.explodedCivilians = 0;
global.explodedTerrorists = 0;
global.crosshairsSpeed = 3.5
global.lastLevel = 6;
global.buttonName = "space"
global.pointsForKill = 100;
global.score = 0; 
global.initials = "";

//Global sounds.
global.sndExplosion = sndExplosion;
global.sndCallToPrayer = sndCallToPrayer;
global.sndMachineGun = sndMachineGun;

action_set_alarm(30, 0);
