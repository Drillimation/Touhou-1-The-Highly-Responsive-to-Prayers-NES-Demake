/// @description Insert description here
// You can write your code in this editor
if canbehit = true {
	canbehit = false;
	life -= 1;
	audio_play_sound(snd_hit,10,false);
	if sprite_index == spr_yuugenmagan_idle or sprite_index == spr_yuugenmagan_intro {
		sprite_index = spr_yuugenmagan_hurt;
		alarm[1] = 120;
	}
}
with (obj_yinyang_orb) {
	move_bounce_solid(false);
}