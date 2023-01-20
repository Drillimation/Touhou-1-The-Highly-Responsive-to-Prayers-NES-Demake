if ammo >= 1 {
	scr_shoot_bullet(obj_bullet,1.5,dir);
	ammo -= 1;
	dir += drop;
}