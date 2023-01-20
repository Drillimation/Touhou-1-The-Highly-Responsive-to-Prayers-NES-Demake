if ammo >= 1 {
	for (var i = 1; i < 5; i += 1) {
		for (var j = 0; j < global.difficulty + 1; j += 1) {
			scr_shoot_bullet(obj_bullet,2 - (j * 0.125),270 + (i * 15));
			scr_shoot_bullet(obj_bullet,2 - (j * 0.125),270 - (i * 15));
		}
	}
	ammo -= 1;
}