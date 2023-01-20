if ammo >= 1 {
	timeline_position = 295;
	dir += 10;
}
else {
	if rnd >= 1 {
		ammo = 10;
		dir = 225;
		rnd -= 1;
		timeline_position = 285;
	}
	else {
		timeline_running = false;
		index = 2;
	}
}