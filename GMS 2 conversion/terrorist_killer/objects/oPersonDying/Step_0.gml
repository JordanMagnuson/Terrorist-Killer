rot += fallDirection*fallSpeed;

if (abs(rot)>=90){
	//instance_change(oPersonDead,false); THIS DOESN'T WORK 
	//instance_create_depth(x,y,depth, oPersonDead);
	killed = instance_create_depth(x,y,depth, oPersonDead);
	with(killed){
		image_index = other.image_index; //pass the image_index forward
		rot = other.rot;
		fallDirection = other.fallDirection;
		fallSpeed = other.fallSpeed;
		facing = other.facing;
	}
	instance_destroy();
}


