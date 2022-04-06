// This object is only relevant for browser target.
if (os_browser == browser_not_a_browser) {
	instance_destroy();
}

last_browser_width = browser_width;
last_browser_height = browser_height;

// Set cursor to handpoint.
window_set_cursor(cr_handpoint);