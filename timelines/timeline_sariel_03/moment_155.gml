randomize();
if dir > 0 {
	scr_shoot_bullet(obj_laser,2.5,dir)
	for (var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
		scr_shoot_bullet(obj_bullet,random_range(1,2),dir+irandom_range(-5,5))
	}
	dir -= 5;
}