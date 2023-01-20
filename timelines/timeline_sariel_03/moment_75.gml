randomize();
if ammo >= 1 {
	scr_shoot_bullet_positionedatplayer(irandom_range(16,240),y,obj_laser,2,0);
	for (var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
		scr_shoot_bullet_positioned(irandom_range(16,240),24,obj_bullet,2,irandom_range(180,360));
	}
}
ammo -= 1;