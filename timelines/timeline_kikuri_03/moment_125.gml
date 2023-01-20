if ammo >= 1 {
	timeline_position = 100;
}
else {
	for (var i = 0; i < (global.difficulty * 3) + 3; i += 1) {
		scr_shoot_bullet_positioned(8 + (240 / i),16,obj_laser,1.5,270)
	}
}