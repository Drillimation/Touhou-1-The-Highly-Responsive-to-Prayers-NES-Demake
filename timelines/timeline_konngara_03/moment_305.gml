randomize();
if ammo >= 1 {
	for (var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_atplayer(obj_bullet,2,-30 + (i * 15))
		scr_shoot_bullet_atplayer(obj_bullet,2,30 + (i * 15))
	}
	ammo -= 1;
}