if audio_is_playing(global.song) {
	audio_stop_sound(global.song);
	global.song = audio_play_sound(snd_world2_j,10,true);
}
else {
	global.song = audio_play_sound(snd_world2_j,10,true);
}
global.world = 2;
global.stage = 6;
global.time = 120;