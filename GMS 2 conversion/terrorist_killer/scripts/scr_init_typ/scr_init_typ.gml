function scr_init_typ(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	ist = string(argument0) // The text that has to be typed
	stsep = argument1 //The line separation
	stmw = argument2 //The maximum line width
	stal = argument3 //Text Alpha
	stsk = argument4 //The Skip Key Set to "0" for no skip
	drx = argument5 //Draw X Position
	dry = argument6 //Draw Y Position
	typs = argument7 // Typing Speed
	txtcol = argument8 // Text Color
	txtfnt = argument9 // Font
	est = string_length(ist) //The length of that text
	sst = 0 // Declare variable as 0 for later use
	drwst = string_delete(ist,sst,est) // Draw the string as nothing. By taking the letters out of the string
	skip = false // Set skip to false
	finishedTyping = false;



}
