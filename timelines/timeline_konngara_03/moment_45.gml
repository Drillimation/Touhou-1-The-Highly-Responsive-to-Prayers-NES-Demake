randomize();
if ammo >= 1 {
	for (var i = 0; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_positioned(240 - (ammo * 8),32,obj_bullet,1.5,irandom_range(225,315))
	}
	ammo -= 1;
	with(obj_bullet) {
		gravity = 0.05;
	}
}