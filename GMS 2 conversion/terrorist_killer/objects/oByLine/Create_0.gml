alarm[1] = 60; //When to show "press space" text
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
margin = 10;
x = 160;
y = 0;

depth = -5000; //this text was hiding so I moved it to the front

//Type briefing text
text = "a game by Jordan Magnuson";
scr_init_typ(text,0,room_width-(margin*2),1,vk_space,x,y,1,c_black,global.font5);

width = string_width_ext(string_hash_to_newline(text),20,600);
height = string_height_ext(string_hash_to_newline(text),20,600);

