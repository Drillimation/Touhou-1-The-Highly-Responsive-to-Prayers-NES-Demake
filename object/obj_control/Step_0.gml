/// @description Insert description here
// You can write your code in this editor
if runtimer = true and global.time >= 1 {
	if alarm[0] < 0 {
		alarm[0] = 60;
	}
}
if score > global.highscore {
	global.highscore = score;
}
if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start) {
	if paused == false {
		audio_play_sound(snd_pause,10,false);
		audio_pause_sound(global.song)
		paused = true;
		if instance_exists(obj_yinyang_orb) {
			runtimer = false
		}
		instance_deactivate_all(false);
		instance_activate_object(obj_display_manager);
		instance_activate_object(obj_resize);
		if !instance_exists(obj_pause) {
			instance_create_depth(128,112,0,obj_pause);
			instance_activate_object(obj_pause);
		}
	}
	else {
		audio_resume_sound(global.song)
		paused = false;
		instance_destroy(obj_pause);
		instance_activate_all();
		if instance_exists(obj_yinyang_orb) {
			runtimer = true;
		}
	}
}
if instance_number(obj_tile) == 0 {
	if paused == false {
		if instance_exists(obj_yinyang_orb) {
			runtimer = false
		}
		instance_deactivate_all(false);
		instance_activate_object(obj_display_manager);
		instance_activate_object(obj_resize);
		if !instance_exists(obj_round_clear) {
			instance_create_depth(128,120,0,obj_round_clear);
			instance_activate_object(obj_round_clear);
		}
	}
}
if score >= global.scoreforlife {
	audio_play_sound(snd_get_life,10,false);
	lives += 1
	if global.scoreforlife >= 120000 {
		global.scoreforlife += 120000;
	}
	else {
		global.scoreforlife += 80000;
	}
}