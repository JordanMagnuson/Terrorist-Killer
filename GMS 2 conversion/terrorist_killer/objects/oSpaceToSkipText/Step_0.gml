if (oBriefing.finishedTyping)
  instance_destroy();

if (fading)
  alpha -= .02 * 30/room_speed;
else
  alpha += .02 * 30/room_speed;

if (alpha >= 1.5 and !fading)
  fading = true;
  
if (alpha <= -0.5 and fading)
  fading = false;

