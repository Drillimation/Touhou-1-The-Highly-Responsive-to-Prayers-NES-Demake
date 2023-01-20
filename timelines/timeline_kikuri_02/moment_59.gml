if life <= 5 {
	timeline_running = false;
	instance_destroy(obj_turret);
}
else {
	timeline_position = 30;
	with (obj_turret) {
		if !instance_exists(obj_bomb_mima) {
			scr_shoot_bullet_atplayer(obj_bomb_mima,1,0);
		}
		if x < 128 {
			hspeed = 1;
		}
		else {
			hspeed = -1;
		}
	}
}