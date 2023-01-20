if ammo >= 1 {
	for (var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
		scr_shoot_bullet(obj_bullet,spd,(i * (360 / 16)) + dir);
	}
	dir += 10;
	ammo -= 1;
}