/// @description Checks to see if a joystick button has been pressed.
/// @param id	the id of the joystick (1 or 2)
/// @param numb The number of the button to check (from 1 to 32).
/// @return {Boolean} true if selected button pressed / false otherwise
function joystick_check_button(argument0, argument1) {
	var jid=__joystick_2_gamepad(argument0);

	var myButton = 0;
	switch( argument1 )
	{
	case 0:	myButton = gp_face1; break;
	case 1:	myButton = gp_face2; break;
	case 2:	myButton = gp_face3; break;
	case 3:	myButton = gp_face4; break;
	case 4:	myButton = gp_shoulderl; break;
	case 5:	myButton = gp_shoulderlb; break;
	case 6:	myButton = gp_shoulderr; break;
	case 7:	myButton = gp_shoulderrb; break;
	case 8:	myButton = gp_select; break;
	case 9:	myButton = gp_start; break;
	case 10: myButton = gp_stickl; break;
	case 11: myButton = gp_stickr; break;
	default:
		myButton = argument1;
		break;
	}

	return (gamepad_button_value(jid, myButton) != 0);


}
