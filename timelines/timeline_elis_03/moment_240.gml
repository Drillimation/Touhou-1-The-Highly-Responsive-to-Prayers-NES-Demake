if ammo >= 1 {
	scr_shoot_bullet_atplayer(obj_bullet,1.5,0);
	if ammo >= 2 {
		for (var i = 1; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet(obj_bullet,1.5 - (i * 0.125),270 + dir);
			scr_shoot_bullet(obj_bullet,1.5 - (i * 0.125),270 - dir);
		}
	}
	dir += 15;
	if ammo == 1 {
		for (var i = 1; i < (global.difficulty * 5) + 5; i += 1) {
			scr_shoot_bullet(obj_bullet,1.5,180 + ((180 / ((global.difficulty * 4) + 4)) * i));
		}
	}
	ammo -= 1;
}