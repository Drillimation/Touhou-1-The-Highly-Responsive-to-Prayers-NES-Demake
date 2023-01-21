/// @description Insert description here
// You can write your code in this editor
if canbehit = true {
	canbehit = false;
	life -= 1;
	audio_play_sound(snd_hit,10,false);
	if sprite_index == spr_sariel_attack or sprite_index == spr_sariel_idle {
		sprite_index = spr_sariel_hurt;
		alarm[1] = 300;
	}
	if life == 5 {
		if !audio_is_playing(snd_world4_boss_m2) {
			audio_stop_sound(global.song);
			global.song = audio_play_sound(snd_world4_boss_m2,10,true);
		}
	}
}
with (obj_yinyang_orb) {
	move_bounce_solid(false);
}