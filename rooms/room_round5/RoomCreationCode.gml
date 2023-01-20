if audio_is_playing(global.song) {
	audio_stop_sound(global.song);
	global.song = audio_play_sound(snd_world1_boss,10,true);
}
else {
	global.song = audio_play_sound(snd_world1_boss,10,true);
}
global.stage = 5;
global.time = 200;