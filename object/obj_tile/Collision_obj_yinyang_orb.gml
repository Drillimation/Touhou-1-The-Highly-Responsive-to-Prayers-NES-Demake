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
	score += ((global.world * 10) * obj_yinyang_orb.combo)
	add_to_score = ((global.world * 10) * obj_yinyang_orb.combo)
	obj_yinyang_orb.combo += 1;
	if obj_yinyang_orb.combo > global.maxcombo {
		global.maxcombo = obj_yinyang_orb.combo
	}
	sprite_index = spr_tile_destroy;
}