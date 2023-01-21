/// @description Insert description here
// You can write your code in this editor
randomize();
for (var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_positioned(irandom_range(16,240),24,obj_bullet, 0.75,irandom_range(180,360));
}
alarm[1] = 60;
