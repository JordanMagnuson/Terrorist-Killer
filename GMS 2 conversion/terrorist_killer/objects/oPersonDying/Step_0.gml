rot += fallDirection*fallSpeed;

if (abs(rot)>=90){
	//instance_change(oPersonDead,false); THIS DOESN'T WORK 
	instance_create_depth(x,y,depth, oPersonDead);
	instance_destroy();
}


