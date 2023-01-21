/// @description Insert description here
// You can write your code in this editor
hspeed = 0;
if sprite_index == spr_reimu_slide {
	sprite_index = spr_reimu_hurt;
	audio_play_sound(snd_bump,10,false);
	sliding = true
	slowing = true
	if image_xscale == 1 {
		x -= 8;
		hspeed = -0.5
		alarm[0] = 15;
	}
	if image_xscale == -1 {
		x += 8;
		hspeed = 0.5
		alarm[0] = 15;	
	}
}