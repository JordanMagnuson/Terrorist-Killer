alarm[0] -= 1;
if (alarm[0] <= 0 and !fading)
  alpha += 0.01;
  
if (alpha >= 1 and !fading)
{
  fading = true;
}

if (fading)
  alarm[1] -= 1;

if (fading and alarm[1] <= 0)
  alpha -= 0.01;
  
if (fading and alpha <= -1)
{
  instance_create(x,y,oQuoteText);
  instance_destroy();
}

