down = keyboard_check(vk_space);
pressed = keyboard_check_pressed(vk_space);
released = keyboard_check_released(vk_space);

//Joystick support
//Have to manually program "pressed" and "released" states
if (joystick_check_button(1,1)) {          // Joystick press button
 joy_button = true;
 keyboard_key_press(vk_space);
}
else {
 if (joy_button = true) {          // Joystick release button
   joy_button = false;
   keyboard_key_release(vk_space);
 }
}

//Mouse support
//(For some reason mouse_check_button_pressed doesn't seem to work right
// so have to implement manually)

if (mouse_check_button(mb_left)) {          // Joystick press button
 mouse_button_pressed = true;
 keyboard_key_press(vk_space);
}
else {
 if (mouse_button_pressed = true) {          // Joystick release button
   mouse_button_pressed = false;
   keyboard_key_release(vk_space);
 }
}
//See endstep
if (released)
  newPress = true;

// ESC to quit.
if (keyboard_check_pressed(vk_escape)) {
	game_end();
}