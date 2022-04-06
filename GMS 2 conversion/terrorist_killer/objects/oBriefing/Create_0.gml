script_execute(briefingCreateScript,0,0,0,0,0);
if (global.SHOW_SCORE) {
	instance_create_depth(0,0,0,oBriefingScore);
}

// Set cursor.
// window_set_cursor(cr_handpoint);
window_set_cursor(cr_none);