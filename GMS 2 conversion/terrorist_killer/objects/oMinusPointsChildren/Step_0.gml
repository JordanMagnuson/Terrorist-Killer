y -= 1;
if (alpha > 0)
  alpha-=1/(2*room_speed); //factor in front of room speed is how many seconds to take to fade
else
  instance_destroy();

