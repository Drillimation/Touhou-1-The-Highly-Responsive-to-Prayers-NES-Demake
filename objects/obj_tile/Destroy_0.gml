/// @description Insert description here
// You can write your code in this editor
var inst = instance_create_depth(x,y,-1000,obj_sub_score_display)
inst.display_score = add_to_score;
scr_shoot_bullet_atplayer(obj_bullet,1.5,0);
if global.difficulty >= 1 {
	for (var i = 1; i < global.difficulty + 1; i += 1) {
		scr_shoot_bullet_atplayer(obj_bullet,1.5,15 * i);
		scr_shoot_bullet_atplayer(obj_bullet,1.5,-15 * i);
	}
}
randomize();
if irandom(16) == 1 {
	instance_create_depth(x,y,0,obj_point_item);
}
if irandom(64) == 1 {
	instance_create_depth(x,y,0,obj_get_bomb);
}