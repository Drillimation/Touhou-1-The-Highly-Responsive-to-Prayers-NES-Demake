/// @description Insert description here
// You can write your code in this editor
if canbehit = true {
	canbehit = false;
	life -= 1;
	audio_play_sound(snd_hit,10,false);
	if sprite_index == spr_shingyoku_female_attack or sprite_index == spr_shingyoku_female_idle {
		sprite_index = spr_shingyoku_female_hurt;
		alarm[1] = 120;
	}
	if sprite_index == spr_shingyoku_male_attack or sprite_index == spr_shingyoku_male_idle {
		sprite_index = spr_shingyoku_male_hurt;
		alarm[1] = 120;
	}
	alarm[2] = 120;
}
with (obj_yinyang_orb) {
	move_bounce_solid(false);
}