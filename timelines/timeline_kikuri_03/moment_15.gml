if ammo >= 1 {
	for (var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet(obj_bullet,1.5 - (i * 0.125),dir - 15);
		scr_shoot_bullet(obj_bullet,1.5 - (i * 0.125),dir + 0);
		scr_shoot_bullet(obj_bullet,1.5 - (i * 0.125),dir + 15);
	}
	dir += 15;
	ammo -= 1;
}