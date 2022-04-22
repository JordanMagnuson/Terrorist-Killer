function personCreateScript() {
	if (choose(1,2)==1)
	  facing = 1;
	else
	  facing = -1;

	if(choose(1,2)==1)
	  fallDirection = -1;
	else
	  fallDirection = 1;
  
	rot=0;  

	fallSpeed = 30/room_speed * (10 + random(10));
}
