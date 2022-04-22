alarm[0] -= 1;
if (alarm[0] <= 0)
  alpha += 0.01 * 30/room_speed;
  
if (alpha >= 2)
{
  room_goto(rLeaveComment);
}

