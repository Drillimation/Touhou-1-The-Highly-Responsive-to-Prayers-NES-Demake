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
if life <= 5 {
	index = 4;
}