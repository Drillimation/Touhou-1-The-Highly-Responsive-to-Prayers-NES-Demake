if ammo >= 1 {
	scr_shoot_bullet_atplayer(obj_bullet,2,15);
	scr_shoot_bullet_atplayer(obj_bullet,2,-15);
	ammo -= 1;
}