alarm[0] -= 1;
if (alarm[0] <= 0)
  alpha += 0.01;
  
if (alpha >= 2)
{
  instance_create(x,y,oChomskyText);
}

