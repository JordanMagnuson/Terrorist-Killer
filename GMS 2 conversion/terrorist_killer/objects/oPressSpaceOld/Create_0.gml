holdToQuit = 90; 
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
margin = 20;
x = margin;
y = room_height - margin*2;
//Type briefing text
scr_init_typ("Press " + global.buttonName + " to thwart the evildoers. Hold to quit.",20,room_width-(margin*2),1,vk_space,x,y,1,c_black,global.font6);

