if ammo >= 1 {
	randomize();
	scr_shoot_bullet_positioned(ammo * 16,32,obj_bullet,1.5,270);
	scr_shoot_bullet_positioned(256 - (ammo * 16),32,obj_bullet,1.5,270);
	ammo -= 1;
}