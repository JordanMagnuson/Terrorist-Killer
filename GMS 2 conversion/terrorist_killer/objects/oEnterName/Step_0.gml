if (oAlphabet1.finished and !instance_exists(oAlphabet2))
{
  button.pressed = false;
  button.down = false;
  button.newPress = false;
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
    button.newPress = false;
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
    fadeOut.roomGoto = rHighScore;
  }
}

