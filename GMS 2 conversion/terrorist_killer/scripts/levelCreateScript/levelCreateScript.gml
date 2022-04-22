function levelCreateScript() {
	global.explodedCivilians = 0;	
	global.explodedTerrorists = 0;
	global.civilianKillsLevel = 0;
	global.terroristKillsLevel = 0;

	//Build list of non terrorist image indexes
	civilianImageList = ds_list_create();
	for (i=0; i<image_number; i+=1)
	{
	  if (i == global.terroristImage)
	    continue;
	  ds_list_add(civilianImageList,i);
	}

	//List possible terrorists
	civilianCounter = 0;
	civilianList = ds_list_create();
	for (i=0; i<room_height+sprite_height/2; i+=(sprite_height/2)*global.density)
	{
	  for (j=0; j<room_width; j+=sprite_width*global.density)
	  {
	    civilianCounter+=1;
	    //This is a list of civilians that can be turned into terrorists later.
	    //We don't count civilians on the very edge of the screen, because they are too hard to see
	    //Also, we don't put terrorists at the far top left of the screen, because the crosshairs
	    //start there.
	    if (i<(oCrosshairs.sprite_height*1.5) and j<(oCrosshairs.sprite_width*2))
	      continue;
	    if (i>sprite_height/2 and i<(room_height-sprite_height/2))
	      if (j>sprite_width and j<(room_width-(sprite_width*2)))
	      {
	        ds_list_add(civilianList,civilianCounter);
	      }
	  }
	}

	//Choose Terrorists
	terroristList = ds_list_create();
	repeat (global.numberOfTerrorists)
	{
	  ds_list_shuffle(civilianList);
	  terroristNumber = ds_list_find_value(civilianList,0);
	  ds_list_add(terroristList,terroristNumber);
	  ds_list_delete(civilianList,0);
	}

	//Place People
	rowCounter = 0;
	peopleCounter = 0;
	for (i=0; i<room_height+sprite_height/2; i+=(sprite_height/2)*global.density)
	{
	  rowCounter += 1;
	  for (j=0; j<room_width; j+=sprite_width*global.density)
	  {
	    peopleCounter += 1;
	    yPos = i;  
	    xPos = j;
	    if (rowCounter mod 2 != 1)  //Even row
	      xPos += (sprite_width/2)*global.density;   //So move x position over half a width
    
	    //Now add a random element to the position
	    if (choose(1,2) == 1)
	      yPos += random(sprite_height/4)*global.density;
	    else
	      yPos += random(sprite_height/4)*global.density;
	    if (choose(1,2) == 1)
	      xPos += random(sprite_width/4)*global.density;
	    else
	      xPos += random(sprite_width/4)*global.density;
        
	    //Create the person
	    if (ds_list_find_index(terroristList,peopleCounter) >= 0) //If this person number was chosen to be a terrorist
	    {
	      terrorist = instance_create(xPos,yPos,oTerrorist);
	      terrorist.image_speed = 0;
	      terrorist.image_index = global.terroristImage;
	    }
	    else                                                //Otherwise, create a civilian
	    {
	      ds_list_shuffle(civilianImageList);
	      randomCivilianIndex = ds_list_find_value(civilianImageList,0);
	      person = instance_create(xPos,yPos,oPerson);
	      person.image_speed = 0;
	      person.image_index = randomCivilianIndex;
	    }
	  }
	}

	//This alarm prevents the user from firing the gun until it reaches 0.
	//Otherwise the gun starts off firing.
	alarm[0] = 10 * room_speed/30;


	/*
	saveFile = file_text_open_write("save_data.txt");
	i=0;
	repeat (ds_list_size(civilianList))
	{
	  currentID = ds_list_find_value(civilianList,i);
	  file_text_write_string(saveFile, string(currentID));
	  file_text_writeln(saveFile);
	  i+=1;
	}
	file_text_close(saveFile);
	*/



}
