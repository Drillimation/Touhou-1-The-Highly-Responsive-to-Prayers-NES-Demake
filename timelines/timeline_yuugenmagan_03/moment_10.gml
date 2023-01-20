if ammo >= 1 {
	scr_shoot_bullet_atplayer(obj_bullet,2,-30);
	with (obj_yuugenmagan_sub) {
		scr_shoot_bullet_atplayer(obj_bullet,2,30);
	}
	ammo -= 1;
}