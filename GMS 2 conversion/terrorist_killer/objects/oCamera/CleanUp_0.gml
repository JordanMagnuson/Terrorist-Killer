// Cameras need to be manually destroyed in order to prevent memory leaks.
// See camera_create_view() help page.
if (variable_global_exists("camera")) camera_destroy(global.camera);