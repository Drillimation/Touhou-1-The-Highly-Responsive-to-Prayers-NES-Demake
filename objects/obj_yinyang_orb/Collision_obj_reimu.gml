/// @description Insert description here
// You can write your code in this editor
move_bounce_solid(false);
if obj_reimu.sprite_index == spr_reimu_slide or obj_reimu.sprite_index == spr_reimu_swing_wand {
	if audio_is_playing(snd_hit) {
		audio_stop_sound(snd_hit);
		audio_play_sound(snd_hit,10,false);
	}
	else {
		audio_play_sound(snd_hit,10,false);
	}
	move_bounce_solid(false);
	//y = other.y - 12;
	vspeed = -3;
	if obj_reimu.sprite_index == spr_reimu_slide {
		hspeed = obj_reimu.image_xscale * 2
	}
}
else {
	obj_reimu.sprite_index = spr_reimu_hurt;
	audio_play_sound(snd_bump,10,false);
	global.life -= 5;
	instance_create_depth(x,y,-1000,obj_hit);
	obj_reimu.sliding = true
	obj_reimu.slowing = true
	if x >= obj_reimu.x {
		obj_reimu.x -= 8;
		obj_reimu.hspeed = -0.5
		obj_reimu.alarm[0] = 15;
	}
	if x <= obj_reimu.x {
		obj_reimu.x += 8;
		obj_reimu.hspeed = 0.5
		obj_reimu.alarm[0] = 15;	
	}
}