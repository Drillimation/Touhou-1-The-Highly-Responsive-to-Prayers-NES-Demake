if ammo == 0 {
	randomize();
	index = irandom_range(0,4);
	sprite_index = spr_yuugenmagan_idle;
	instance_destroy(obj_yuugenmagan_sub);
	timeline_running = false;
}
else {
	timeline_position = 20;
}