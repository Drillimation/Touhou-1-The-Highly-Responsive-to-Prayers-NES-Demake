randomize();
if ammo >= 1 {
	for (var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
		scr_shoot_bullet_positionedatplayer(irandom_range(16,240),32,obj_bullet,1.5,irandom_range(-45,45))
	}
	ammo -= 1;
}