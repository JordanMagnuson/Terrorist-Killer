function briefingCreateScript() {
	audio_stop_sound(global.sndMachineGun);

	global.score = global.terroristKillsTotal * global.pointsForKill - global.civilianKillsTotal * global.pointsForKill;
	typingReset = false;
	stringTer = " ";

	//Initialize new level
	global.level += 1;

	//Create list of child image indexes
	global.childImagesList = ds_list_create();
	for (i = 0; i<image_number; i+= 1)
	{
	  if (i == 5 or i == 9 or i mod 10 == 5 or i mod 10 == 9)
	    ds_list_add(global.childImagesList,i);
	}
	//Prevent children from being terrorists

	do
	{
	  global.terroristImage = rand(image_number);
	}
	until 
	  (ds_list_find_index(global.childImagesList,global.terroristImage) < 0)

 
 
	global.numberOfTerrorists = 4 + global.level;
	if (global.level < global.lastLevel) 
		//global.density = 1/(1/4 * power(1.3,global.level));		// Density function from original game.
		global.density = 1/(1/3.5 * power(1.15,global.level)); //This is actually SPACING; 1 is everyone packed like Sardines
	else 
		global.density = 0.9;	// Force last level density to whatever we want (super high density).
	show_debug_message("Level: " + string(global.level));
	show_debug_message("global.density: " + string(global.density));
	//if (global.density < 1)
	//  global.density = 1;
	global.crosshairPasses = 1;
	//if (global.density <= 1)
	//  global.crosshairsSpeed += (1/2);

	//Where to draw image of terrorist on briefing screen
	if (global.level == 1)
	{
	  photoX = room_width/2;
	  photoY = 270;
	}
	else
	{
	  photoX = room_width - 100;
	  photoY = 270;
	}

	visible = false //This is to prevent it from flashing the full text for a milisecond. Try taking this out and see why its here. It is set back to true in the step event
	margin = 20;
	x = margin;
	y = margin;
	//Create briefing text
	remainingCells = (global.lastLevel + 1) - global.level;
	if (global.level = 1)
	  stringBrief = "Intelligence reports " + string(global.numberOfTerrorists) + " terrorists hiding in this region of the Middle East.";
	else
	{
	  stringBrief = "Congratulations on a job well done. But your work's not over, so don't relax.##Intelligence reports ";
	  if (remainingCells > 1)
	    stringBrief += string(remainingCells) + " more terrorist cells in this region, and for some reason, the number of terrorists has increased."; //There are now " + string(global.numberOfTerrorists) + " terrorists hiding out here."
	  else
	    stringBrief += "that there is one more terrorist cell in this region, comprised of " + string(global.numberOfTerrorists) + " terrorists, located in a densely populated area."
	}
   
	if (remainingCells > 1)  
	  stringBrief += " Kill them before it is too late.";
	else
	  stringBrief += " Kill them, and the War on Terror will be over.";

	if (global.level = 1)  
	  stringBrief += "##Take a good look at this photo. The terrorists look like this:";
	else
	  stringBrief += "##The terrorists look like this:";  

	//Type briefing text
	//arg0 = The text that has to be typed
	//arg1 = The line separation
	//arg2 = The maximum line width
	//arg3 = Text Alpha
	//arg4 = The Skip Key Set To "0" For No Skip
	//arg5 = Draw X Position
	//arg6 = Draw Y Position
	//arg7 = Typing Speed
	//arg8 = Text Color
	//arg9 = Font
	scr_init_typ(stringBrief,20,room_width-(margin*2),1,vk_space,x,y,1,c_black,global.font6);



}
