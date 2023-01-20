if ammo >= 1 {
	timeline_position = 10	
}
else {
randomize();
	x = irandom_range(64,192)
	y = irandom_range(64,120)
	ammo = (global.difficulty * 16) + 16
}