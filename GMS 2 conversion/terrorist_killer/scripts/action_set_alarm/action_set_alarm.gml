/// @description (Old DnD) - set alarm
/// @param index alarm index
/// @param val value to set to
function action_set_alarm(argument0, argument1) {
	var time_adjusted_for_room_speed = argument0 * room_speed/30;
	alarm_set( argument1, time_adjusted_for_room_speed );



}
