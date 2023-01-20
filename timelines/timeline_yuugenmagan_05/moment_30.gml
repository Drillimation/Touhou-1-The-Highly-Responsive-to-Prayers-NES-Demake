randomize();
if ammo == 0 {
	index = irandom_range(0,4);
	sprite_index = spr_yuugenmagan_idle;
	instance_destroy(obj_yuugenmagan_sub);
	timeline_running = false;
}
else {
	timeline_position = 15;
	if mov == 0 {
		goto = irandom_range(0,4);
		instance_destroy(obj_yuugenmagan_sub);
		x_place[0] = 128;
		y_place[0] = 64;
		x_place[1] = 16;
		y_place[1] = 96;
		x_place[2] = 240;
		y_place[2] = 96;
		x_place[3] = 80;
		y_place[3] = 120;
		x_place[4] = 176;
		y_place[4] = 120;
		x = x_place[goto]
		y = y_place[goto]
		mov = 10;
	}
}