/// @description Insert description here
// You can write your code in this editor
image_index = 1;
scr_shoot_bullet_atplayer(obj_bullet,1.5,0);
if global.difficulty >= 1 {
	for (var i = 1; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_atplayer(obj_bullet,1.5,15 * i);
		scr_shoot_bullet_atplayer(obj_bullet,1.5,-15 * i);
	}
}
alarm[0] = 180;
alarm[1] = 15;