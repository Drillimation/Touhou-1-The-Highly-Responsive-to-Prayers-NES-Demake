/// @description Insert description here
// You can write your code in this editor
if other.sprite_index == spr_reimu_swing_wand {
	if x < other.x {
		direction = 150;
	}
	if x > other.x {
		direction = 30;
	}
	//move_bounce_solid(true);
	y = other.y - 4;
}
if other.sprite_index == spr_reimu_slide {
	if other.image_xscale == 1 {
		direction = 30;
	}
	if other.image_xscale == -1 {
		direction = 150;
	}
	//move_bounce_solid(true);
	y = other.y - 12;
}
if other.sprite_index == spr_reimu_idle or other.sprite_index == spr_reimu_walk or other.sprite_index == spr_reimu_run {
	instance_create_depth(x,y,-1000,obj_hit);
	instance_destroy();
	global.life -= 1;
}