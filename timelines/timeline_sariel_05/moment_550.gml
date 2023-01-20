randomize();
if ammo >= 1 {
	for (var i = 0; i < (global.difficulty * 3) + 3; i += 1) {
		scr_shoot_bullet_positioned(irandom_range(16,240),32,obj_bullet,1,choose(225,315))
	}
	ammo -= 1;
}