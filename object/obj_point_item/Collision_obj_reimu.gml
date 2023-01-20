/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_yinyang_orb) {
	score += obj_yinyang_orb.combo * 100
}
else {
	score += 100
}
var inst = instance_create_depth(x,y,-1000,obj_sub_score_display)
if instance_exists(obj_yinyang_orb) {
	inst.display_score = obj_yinyang_orb.combo * 100;
}
else {
	inst.display_score = 100;
}
instance_destroy();