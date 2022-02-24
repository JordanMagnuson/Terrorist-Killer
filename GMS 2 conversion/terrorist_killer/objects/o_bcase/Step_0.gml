if speed<=0//if the speed is less than 0 the sprite will no longer animate
{
image_speed=0;
}

if fade=true
{
image_alpha-=0.01;//this give a cool fade away effect
}

if image_alpha<=0//this will destroy the object when it can no longer be faded
{
instance_destroy();
}
