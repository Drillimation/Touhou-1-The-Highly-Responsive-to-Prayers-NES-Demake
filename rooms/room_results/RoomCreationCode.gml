if !audio_is_playing(snd_credits) {
	audio_stop_sound(global.song);
	global.song = audio_play_sound(snd_credits,10,true);
}