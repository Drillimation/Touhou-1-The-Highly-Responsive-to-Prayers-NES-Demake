if ammo >= 1 {
	timeline_position = 30;
}
else {
	audio_play_sound(snd_transform,10,false);
	sprite_index = spr_elis_idle;
}