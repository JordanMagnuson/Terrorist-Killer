// Forget about entering name: jump immediately to end screen.
if (oEnterNameText.finishedTyping) {
	if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
	    fadeOut = instance_create(0,0,oFadeOut);
	    fadeOut.roomGoto = rKidding;
	}
}

if (oAlphabet1.finished and !instance_exists(oAlphabet2))
{
  button.pressed = false;
  button.down = false;
  //button.newPress = false;
//  keyboard_key_release(vk_space); 
  x = x+margin;
  instance_create(x, y, oAlphabet2)
}
if (instance_exists(oAlphabet2))
{
  if (oAlphabet2.finished and !instance_exists(oAlphabet3))
  {
    button.pressed = false;
    button.down = false;  
    //button.newPress = false;
//    keyboard_key_release(vk_space);
    x = x+margin;
    instance_create(x, y, oAlphabet3)
  }
}
if (instance_exists(oAlphabet3))
{
  if (oAlphabet3.finished and !instance_exists(oFadeOut))
  {
    global.initials = oLetter1.letter + oLetter2.letter + oLetter3.letter;
    global.score = global.terroristKillsTotal * global.pointsForKill - global.civilianKillsTotal * global.pointsForKill; 
//    highscore_add(initials,global.score);
    fadeOut = instance_create(0,0,oFadeOut);
    fadeOut.roomGoto = rKidding;
  }
}

