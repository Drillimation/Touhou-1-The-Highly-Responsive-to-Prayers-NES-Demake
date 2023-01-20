randomize();
if ammo >= 1 {
	for(var i = 0; i < 4; i += 1) {
		scr_shoot_bullet(obj_bullet,1.5,(i * 90) + dir);
	}
	for(var i = 0; i < 4; i += 1) {
		scr_shoot_bullet(obj_bullet,1.5,(i * 90) - dir);
	}
	dir += 10;
	ammo -= 1;
}