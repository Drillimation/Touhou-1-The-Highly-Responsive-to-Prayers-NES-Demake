if ammo >= 1 {
	randomize();
	for (var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_positioned(ammo * 16,208,obj_bullet,1.5 - (global.difficulty * 0.125),90);
		scr_shoot_bullet_positioned(256 - (ammo * 16),208,obj_bullet,1.5 - (global.difficulty * 0.125),90);
	}
	ammo -= 1;
}