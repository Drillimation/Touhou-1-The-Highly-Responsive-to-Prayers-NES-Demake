if ammo == 0 {
	x = 128;
	index = irandom_range(0,4);
	sprite_index = spr_mima_idle;
	timeline_running = false;
}
else {
	timeline_position = 30;
}