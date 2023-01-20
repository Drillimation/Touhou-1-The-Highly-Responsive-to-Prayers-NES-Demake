if ammo >= 1 {
	with(obj_turret) {
		for (var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet(obj_bullet,2 - (i * 0.125),270+30);
			scr_shoot_bullet(obj_bullet,2 - (i * 0.125),270+45);
			scr_shoot_bullet(obj_bullet,2 - (i * 0.125),270+60);
			scr_shoot_bullet(obj_bullet,2 - (i * 0.125),270-30);
			scr_shoot_bullet(obj_bullet,2 - (i * 0.125),270-45);
			scr_shoot_bullet(obj_bullet,2 - (i * 0.125),270-60);
		}
		obj_bullet.gravity = 0.05;
	}
}