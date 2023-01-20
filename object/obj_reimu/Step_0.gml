/// @description Insert description here
// You can write your code in this editor
//Moving
if gamepad_is_connected(0) {
	moving_l = (gamepad_axis_value(0,gp_axislh) < 0)
	moving_r = (gamepad_axis_value(0,gp_axislh) > 0)
	release = (gamepad_axis_value(0,gp_axislh) = 0)
}	
else {
	moving_l = keyboard_check(vk_left) and !keyboard_check(vk_right)
	moving_r = keyboard_check(vk_right) and !keyboard_check(vk_left)
	release = !keyboard_check(vk_left) and !keyboard_check(vk_right)
}
gamepad_set_axis_deadzone(0,0.5);
if sliding == false {
	if moving_l {
		swinging = true;
		if keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face2) {
			sliding = true;
			audio_play_sound(snd_slide,10,false);
		}
		else {
			hspeed = -1.5;
			sprite_index = spr_reimu_walk;
			image_xscale = -1;
		}
	}
	if moving_r {
		swinging = true;
		if keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face2) {
			sliding = true;
			audio_play_sound(snd_slide,10,false);
		}
		else {
			hspeed = 1.5;
			sprite_index = spr_reimu_walk;
			image_xscale = 1;
		}
	}
	if release {
		hspeed = 0;
		sprite_index = spr_reimu_idle;
		image_xscale = 1;
		swinging = false;
	}
	if keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face2) {
		if swinging != true {
			audio_play_sound(snd_swing,10,false);
			swinging = true;
			sprite_index = spr_reimu_swing_wand;
			sliding = true;
			slowing = true;
			if alarm[0] < 0 {
				alarm[0] = 20;
			}
		}
	}
	if keyboard_check_pressed(ord("C")) or gamepad_button_check_pressed(0,gp_select) {
		if usingbomb = false and global.bombs >= 1 {
			usingbomb = true;
			audio_play_sound(snd_shortfall,10,false);
			instance_create_depth(x,y - 16,0,obj_bomb);
		}
	}
}
else {
	if image_xscale == 1 and slowing == false {
		hspeed = 2;
		sprite_index = spr_reimu_slide;
		image_xscale = 1;
		slowing = true;
	}
	if image_xscale == -1 and slowing == false {
		hspeed = -2;
		sprite_index = spr_reimu_slide;
		image_xscale = -1;
		slowing = true;
	}
	if slowing == true {
		if hspeed >= 1.51 {
			hspeed -= 0.01;
		}
		if hspeed <= -1.51 {
			hspeed += 0.01;
		}
		if hspeed == -1.5 or hspeed == 1.5 {
			sliding = false;
			slowing = false;
		}
	}
}
if keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	if !instance_exists(obj_yinyang_orb) {
		audio_play_sound(snd_throw_amulet,10,false);
		instance_create_depth(x,y - 24,-100,obj_yinyang_orb);
		obj_control.runtimer = true;
	}
	else {
		audio_play_sound(snd_throw_amulet,10,false);
		instance_create_depth(x,y - 8,-100,obj_amulet);
	}
}
if global.life <= 0 {
	instance_destroy();
	audio_play_sound(snd_faint,10,false);
	instance_destroy(obj_yinyang_orb);
	instance_create_depth(x,y,0,obj_reimu_faint);
}