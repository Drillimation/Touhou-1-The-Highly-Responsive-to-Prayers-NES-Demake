if ammo >= 1 {
	scr_shoot_bullet_atplayer(obj_bullet,1.5,0);
	for (var i = - 2; i < 3; i += 1) {
		scr_shoot_bullet_positionedatplayer(x + 32, y + 32, obj_bullet,1.5,15 * i);
		scr_shoot_bullet_positionedatplayer(x - 32, y + 32, obj_bullet,1.5,15 * i);
	}
	ammo -= 1;
}