for (var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet(obj_bullet,2,270+(i * 10))
	scr_shoot_bullet(obj_bullet,2,270-(i * 10))
}