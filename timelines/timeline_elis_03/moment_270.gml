if ammo >= 1 {
	timeline_position = 240;
}
else {
	audio_play_sound(snd_transform,10,false);
	sprite_index = spr_elis_bat;
}