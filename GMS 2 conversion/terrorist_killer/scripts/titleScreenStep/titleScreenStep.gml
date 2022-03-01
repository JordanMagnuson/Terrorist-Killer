function titleScreenStep() {
	if (instance_exists(oByLine))
	{
	  if (oByLine.finishedTyping and !startedExplosions)
	  {
	    alarm[0] = 20;
	    startedExplosions = true;
	  }
	}

	if (startedExplosions)
	  alarm[0] -= 1;

	if (startedExplosions and alarm[0] <= 0)
	{
	    ds_list_shuffle(terroristIDList);
	    terroristID = ds_list_find_value(terroristIDList,0);
	    ds_list_delete(terroristIDList,0);
	    if (instance_exists(terroristID))
	    {
	      if (terroristID.object_index != oPersonDead)
	      {
	        alarm[0] = 120 + random(240); 
	        with (terroristID)
	          instance_change(oExplosion,true);
	      }
	      else
	        alarm[0] = 0;  
	    }
	    else
	      alarm[0] = 0;    
	}

	if (ds_list_size(terroristIDList) <= 0)
	{
	  alarm[1] -= 1;
	}

	if (alarm[1] <= 0 and !instance_exists(oFadeTitle))
	{
	  instance_create(0,0,oFadeTitle);
	}
}
