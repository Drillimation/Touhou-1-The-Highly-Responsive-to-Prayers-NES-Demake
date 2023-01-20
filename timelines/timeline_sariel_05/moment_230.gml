randomize();
for (var i = 0; i < (global.difficulty * 10) + 10; i += 1) {
	scr_shoot_bullet_positioned(16 + ((240 / ((global.difficulty * 10) + 10)) * i),y + 0,obj_bullet,2,irandom_range(0,360));
}
with (obj_bullet) {
	gravity = 0.05;
}