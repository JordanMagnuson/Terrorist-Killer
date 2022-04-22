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
visible = false //This is to prevent it from flashing the full text for a milisecond. Try taking this out and see why its here. It is set back to true in the step event
margin = 40;
//Type briefing text
scr_init_typ("Congratulations:#You've won the War on Terror!#You killed " + string(global.terroristKillsTotal) + " terrorists and " + string(global.civilianKillsTotal) + " civilians.##Enter your initials for a highscore!",20,room_width/2 + 60,1,vk_space,x,y,1,c_black,global.font6);