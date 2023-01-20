if ammo >= 1 {
	switch (pick) {
		case 0:
			scr_shoot_bullet_atplayer(obj_bullet,1.5,-15);
			scr_shoot_bullet_atplayer(obj_bullet,1.5,15);
			with (obj_yuugenmagan_sub) {
				scr_shoot_bullet_atplayer(obj_bullet,1.5,-15);
				scr_shoot_bullet_atplayer(obj_bullet,1.5,15);
			}
			break;
		case 1:
			scr_shoot_bullet_atplayer(obj_bullet,1.5,45 - dir);
			with (obj_yuugenmagan_sub) {
				scr_shoot_bullet_atplayer(obj_bullet,1.5,135 + obj_yuugenmagan.dir);
			}
			break;
	}
	ammo -= 1;
}