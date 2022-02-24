if fade > 0
  fade-=(1/(howLong*room_speed))*1/(sqr(fade));//factor in front of room speed is how many seconds to take to fade
else
  instance_destroy();

