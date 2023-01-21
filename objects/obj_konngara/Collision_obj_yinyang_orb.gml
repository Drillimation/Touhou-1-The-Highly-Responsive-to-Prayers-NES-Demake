/// @description Insert description here
// You can write your code in this editor
if canbehit = true {
	canbehit = false;
	life -= 1;
	audio_play_sound(snd_hit,10,false);
	if sprite_index == spr_konngara_attack or sprite_index == spr_konngara_idle {
		sprite_index = spr_konngara_hurt;
		alarm[1] = 300;
	}
}
with (obj_yinyang_orb) {
	move_bounce_solid(false);
}