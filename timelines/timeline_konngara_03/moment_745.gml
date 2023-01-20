if ammo >= 1 {
	scr_shoot_bullet_atplayer(obj_laser,1.5,0);
	scr_shoot_bullet_atplayer(obj_bullet,1.5,-30);
	scr_shoot_bullet_atplayer(obj_bullet,1.5,0);
	scr_shoot_bullet_atplayer(obj_bullet,1.5,30);
	ammo -= 1;
}