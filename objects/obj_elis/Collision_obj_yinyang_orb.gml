/// @description Insert description here
// You can write your code in this editor
if canbehit = true and sprite_index != spr_elis_bat and sprite_index != spr_elis_hurt {
	canbehit = false;
	life -= 1;
	audio_play_sound(snd_hit,10,false);
	if sprite_index == spr_elis_attack or sprite_index == spr_elis_idle {
		sprite_index = spr_elis_hurt;
		alarm[1] = 120;
	}
}
with (obj_yinyang_orb) {
	move_bounce_solid(false);
}