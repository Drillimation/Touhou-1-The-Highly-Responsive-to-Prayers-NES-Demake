randomize();
if ammo >= 1 {
	scr_shoot_bullet_positionedatplayer(x + irandom_range(-24,24),y + irandom_range(-24,24),obj_bullet,random_range(1.5,2),irandom_range(-30,30));
	ammo -= 1;
}