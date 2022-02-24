if fade < 1.01
  fade+=1/(3*room_speed);//factor in front of room speed is how many seconds to take to fade
//else if (roomGoto == 0)
//  room_goto(rResult);
else
  room_goto(roomGoto);

