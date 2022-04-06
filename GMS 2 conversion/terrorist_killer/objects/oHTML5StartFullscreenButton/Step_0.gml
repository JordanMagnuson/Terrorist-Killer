// Deal with window resize.
if (last_browser_width != browser_width || last_browser_height != browser_height) {
	// Remove start button, because we will need to re-create it now that the screen has changed.
	if (variable_global_exists("start_button") && clickable_exists(global.start_button)) {
		clickable_delete(global.start_button);
		global.start_button = 0;
	}
	spr_start_button = 0;	
	
	// Update last browser width/height.
	last_browser_width = browser_width;
	last_browser_height = browser_height;
}

// HTML5 clickable.
if (spr_start_button) {	
	if (!variable_global_exists("start_button") || !clickable_exists(global.start_button)) {
		//sw = sprite_get_width(spr_start_button);
		//sh = sprite_get_height(spr_start_button);
		//show_debug_message("button width: " + string(sw));
		//show_debug_message("button height: " + string(sh));		
		
		// Note that because of a bug in clickable_add, the clickable that is generated is sometimes larger than the sprite.
		// This means that if we're adding fullscreen clickable, we get ugly scroll bars in the browser window.
		// To combat this, when we package the game we need to add "overflow: hidden" to the body tag in index.html.
		global.start_button = clickable_add(0, 0, sprite_get_tpe(spr_start_button, 0), "gmcallback_start_game", "_self", "");
	}	
}