/// @description Insert description here
// You can write your code in this editor
if life == 0 {
	timeline_running = false;
	audio_stop_sound(global.song);
	audio_play_sound(snd_explosion,10,false);
	instance_destroy();
	obj_control.runtimer = false;
	score += global.world * 5000
	instance_create_depth(x,y,-1000,obj_delay);
	var inst = instance_create_depth(x,y,-1000,obj_sub_score_display)
	inst.display_score = global.world * 5000;
}
if sprite_index == spr_elis_bat {
	if instance_exists(obj_reimu) {
		if obj_reimu.x > x {
			hspeed = 1.5;
		}
		else {
			hspeed = -1.5
		}
	}
	else {
		hspeed = 0;
	}
}
else {
	hspeed = 0;
}
if life == 5 {
	index = 2;
}
if life == 10 {
	index = 1;
}
if life == 15 {
	index = 0;
}