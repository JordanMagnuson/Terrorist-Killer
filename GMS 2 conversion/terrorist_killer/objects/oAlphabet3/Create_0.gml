//VARS TO CHANGE
delaySpeedFast = 100; //How long to wait at each letter on fast cycle speed
delaySpeedSlow = 10; //How long to wait at each letter on slow cycle speed
letterSpeed = 5;   //How fast the letters move between grid spaces
goSlowTime = 70;    //How long should the letters move slowly after the user presses space the first time?
verticalSpacing = 8;  //Vertical space between letters
colorNotSelected = make_color_rgb(99,8,8); //Color of letters when not selected
colorSelected = c_black;                        //Color of letters when selected
direction = 90;     //Direction to scroll
pointerMargin = 15;

//VARS NOT TO CHANGE
FONT_HEIGHT = sprite_height;
WRAP_HEIGHT = 25 * (FONT_HEIGHT + verticalSpacing);
alarmGoSlow = goSlowTime;
alarmStopLength = delaySpeedFast;
goSlow = false;
stopped = false;
finished = false;
someLetterSelected = false;

y = -(WRAP_HEIGHT - room_height);

for (i=65; i<=90; i+=1) // asci code for "A" is 65, "Z" is 90
{
  y = y + verticalSpacing + FONT_HEIGHT;
  newLetter = instance_create(x,y,oLetter3);
  newLetter.letter = chr(i);
  newLetter.direction = direction;
}