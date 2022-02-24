SS_StopSound(global.sndMachineGun) 
typingReset = false;

//arg0 = The text that has to be typed
//arg1 = The line separation
//arg2 = The maximum line width
//arg3 = Text Alpha
//arg4 = The Skip Key Set To "0" For No Skip
//arg5 = Draw X Position
//arg6 = Draw Y Position
//arg7 = Typing Speed
//arg8 = Text Color
//arg9 = Font
margin = 20;
x=margin;
y=margin;
visible = false //This is to prevent it from flashing the full text for a milisecond. Try taking this out and see why its here. It is set back to true in the step event
stringResult = "You have failed in your mission.#";
if (global.explodedTerrorists == 1)
  stringResult += "A terrorist";
else
  stringResult += string(global.explodedTerrorists) + " terrorists";

stringResult += " managed to detonate themselves, killing " + string(global.explodedCivilians);
if (global.explodedCivilians = 1)
  stringResult += " civilian.";
else
  stringResult += " civilians."
stringResult += "##During the time you spent fighting the War on Terror you killed " + string(global.terroristKillsTotal);

if (global.terroristKillsTotal == 1)
  stringResult += " terrorist";
else
  stringResult += " terrorists";  
if (global.civilianKillsTotal > 0)
{
  if (global.civilianKillsTotal == 1)
    stringResult += " and 1 civilian.";
  else
    stringResult += " and " + string(global.civilianKillsTotal) + " civilians.";
}
else
  stringResult += " and were responsible for the deaths of " + string(global.explodedCivilians) + " civilians.";

stringResult += "##Someone more competent will be found to replace you.";
scr_init_typ(stringResult,20,room_width-margin*2,1,vk_space,x,y,1,c_white,global.font6);

