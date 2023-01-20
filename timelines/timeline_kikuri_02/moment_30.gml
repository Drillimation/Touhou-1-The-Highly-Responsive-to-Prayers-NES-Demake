for (var i = 0; i < global.difficulty + 1; i += 1) {
	scr_shoot_bullet_atplayer(obj_bullet,1.5 - (i * 0.125),-15);
	scr_shoot_bullet_atplayer(obj_bullet,1.5 - (i * 0.125),0);
	scr_shoot_bullet_atplayer(obj_bullet,1.5 - (i * 0.125),15);
}