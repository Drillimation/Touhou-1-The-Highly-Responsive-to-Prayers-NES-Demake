randomize();
if ammo >= 1 {
	for(var i = 0; i < 8; i += 1) {
		scr_shoot_bullet_positionedatplayer(x + irandom_range(-24,24),y + irandom_range(-24,24),obj_bullet,2,irandom_range(-30,30));
	}
	ammo -= 8;
	x = choose(64,128,192);
}