/// @description Insert description here
// You can write your code in this editor
instance_destroy();
if lives >= 2 {
	lives -= 1;
	instance_create_depth(127,208,0,obj_reimu);
}
else {
	instance_deactivate_all(true);
	instance_activate_object(obj_display_manager);
	instance_activate_object(obj_resize);
	if !instance_exists(obj_continue) {
		instance_create_depth(128,112,0,obj_continue);
		instance_activate_object(obj_continue);
	}
}