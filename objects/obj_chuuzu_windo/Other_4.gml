/// @description Insert description here
// You can write your code in this editor
projection_x = display_get_width();
projection_y = display_get_height();
if projection_x >= 512 and projection_y >= 480 {
	global.windowwidth = 256 * 2
	global.windowheight = 240 * 2
	if projection_x >= 768 and projection_y >= 720 {
		global.windowwidth = 256 * 3
		global.windowheight = 240 * 3
		if projection_x >= 1024 and projection_y >= 960 {
			global.windowwidth = 256 * 4
			global.windowheight = 240 * 4
		}
	}
}
else {
global.windowwidth = 256;
global.windowheight = 240;
}

window_set_fullscreen(global.fullscreen);
if global.fullscreen == true {
	instance_create_depth(0,0,0,obj_display_manager);
	surface_resize(application_surface,global.windowwidth,global.windowheight);
}
else {
	instance_create_depth(0,0,0,obj_resize);
	window_set_size(global.windowwidth,global.windowheight);
	window_center();
}