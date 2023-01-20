/// @description Insert description here
// You can write your code in this editor
if life == 0 {
	timeline_running = false;
	audio_stop_sound(global.song);
	audio_play_sound(snd_explosion,10,false);
	instance_destroy();
	if instance_exists(obj_yuugenmagan_sub) {
		instance_destroy(obj_yuugenmagan_sub);
	}
	obj_control.runtimer = false;
	score += global.world * 5000
	instance_create_depth(x,y,-1000,obj_delay);
	var inst = instance_create_depth(x,y,-1000,obj_sub_score_display)
	inst.display_score = global.world * 5000;
}
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