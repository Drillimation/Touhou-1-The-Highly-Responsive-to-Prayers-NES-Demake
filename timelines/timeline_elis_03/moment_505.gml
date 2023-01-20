if ammo >= 1 {
	scr_shoot_bullet_atplayer(obj_laser,1.5,0);
	timeline_position = 495;
}
else {
	timeline_running = false;
}