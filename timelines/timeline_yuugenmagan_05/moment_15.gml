if ammo >= 1 {
	for (var i = 0; i < 5; i += 1) {
		scr_shoot_bullet_positioned(128,112,obj_bullet,1.5,((360 / 5) * i) + dir)
	}
	ammo -= 1;
	dir += 15;
	mov -= 1;
}