function scr_step_typ(argument0) {
	if not(stsk = 0) //If skip key variable is not 0 (0 means not in use. Is set in create event)
	{
	if keyboard_check_pressed(stsk)
	{skip = true} }// Check if user presses the defined key for skippping. If yes then set skip to true

	if skip = false // Skip is not true then continue script as normal
	{
	if sst < string_length(ist)+1 // If text is not fully shown then
	{
	sst += argument0 //The amount of letters to add per click
	sound_play(snd_type)//Click Sound
	drwst = string_delete(ist,sst,est)//Draw the new text that has has the new letter attached to it
	}
	}


	if skip = true and not(drwst = ist) // If skip is true and the current drawn string is not equal to the full string. Then make it equal. 
	//This needs to check otherwise it will continue to set it and it will cause a flashing of text.
	{
	drwst = ist
	}

	if visible = false{visible = true} // Make it so we can now see the text

	if (drwst == ist)
	{
	  finishedTyping = true;
	}  



}
