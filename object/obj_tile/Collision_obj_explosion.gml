/// @description Insert description here
// You can write your code in this editor
if was_hit == false {
	was_hit = true;
	if audio_is_playing(snd_flip) {
		audio_stop_sound(snd_flip);
		audio_play_sound(snd_flip,10,false);
	}
	else {
		audio_play_sound(snd_flip,10,false);
	}
	score += global.world * 100
	add_to_score = global.world * 100
	if instance_exists(obj_yinyang_orb) {
		obj_yinyang_orb.combo = 1;
	}
	sprite_index = spr_tile_destroy;
}