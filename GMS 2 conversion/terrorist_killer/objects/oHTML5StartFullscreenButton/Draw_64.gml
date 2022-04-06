// HTML5 clickable.
if (!spr_start_button) {
	// Create fullscreen start button clickable from surface.
	surf_start_button = surface_create(browser_width, browser_height);
	spr_start_button = sprite_create_from_surface(surf_start_button,0,0,browser_width,browser_height,false,false,0,0);
	surface_reset_target();
	surface_free(surf_start_button);
}