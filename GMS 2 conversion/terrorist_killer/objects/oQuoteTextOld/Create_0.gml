typingReset = false;
finishedTyping = false;

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
x = room_width/2;
y = room_height/2 - 50;
//Type briefing text
scr_init_typ(chr(34)+"Everybody's worried about stopping terrorism. Well, there's a really easy way: stop participating in it."+chr(34),20,room_width-margin*2,1,0,x,y,1,c_white,global.font6);

action_set_alarm(80, 0);