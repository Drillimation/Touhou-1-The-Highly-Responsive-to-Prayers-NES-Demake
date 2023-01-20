randomize();
if ammo >= 1 {
	scr_shoot_bullet_positionedatplayer(x + irandom_range(-32,32),y + irandom_range(-32,32),obj_bullet,2,0);
	ammo -= 1;
}