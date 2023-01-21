/// @description Insert description here
// You can write your code in this editor
if canbehit == true {
	sprite_index = spr_yuugenmagan_idle;
	if instance_exists(obj_reimu) {
		if obj_reimu.x < x - 64 {
			image_index = 0;
		}
		if obj_reimu.x > x - 64 and obj_reimu.x < x + 64 {
			image_index = 1;
		}
		if obj_reimu.x > x + 64 {
			image_index = 2;
		}
	}
	else {
		image_index = 1;
	}
}