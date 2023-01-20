if ammo >= 1 {
	randomize();
	for (var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_positioned(ammo * 16,208,obj_bullet,1.5,irandom_range(45,135));
		scr_shoot_bullet_positioned(256 - abs(ammo * 16),208,obj_bullet,1.5 - (global.difficulty * 0.125),90);
	}
	with (obj_bullet) {
		gravity = 0.05;
	}
	ammo -= 1;
}