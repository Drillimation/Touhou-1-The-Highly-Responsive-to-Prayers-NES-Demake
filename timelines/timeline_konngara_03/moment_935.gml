if ammo >= 1 {
	for (var i = 0; i < 4; i += 1) {
		scr_shoot_bullet(obj_bullet,1,(dir + 7.5) + (i * 15));
		scr_shoot_bullet(obj_bullet,1,(dir - 7.5) - (i * 15));
	}
	ammo -= 1;
	dir -= 15;
}