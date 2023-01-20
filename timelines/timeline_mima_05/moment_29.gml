if ammo == 0 {
	index = irandom_range(0,4);
	sprite_index = spr_mima_idle;
	timeline_running = false;
}
else {
	timeline_position = 15;
}