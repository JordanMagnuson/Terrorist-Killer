motion_set(random(360),random(5));//sets to move in any were in a 360 degree movement and speed to random out of 15
//gravity_direction=270;//sets the direction gravity pulls
//gravity=0.5;//sets ammount of gravity (i dont recomend over 0.5)
alarm[0]=60/((instance_number(oBlood) + 50)/50) * room_speed/30;//sets the timer for when to start to remove blood
alarm[1]=8 * room_speed/30;//Stop moving when this alarm hits 0
fade=false;//tells not to fade yet

depth = 1;