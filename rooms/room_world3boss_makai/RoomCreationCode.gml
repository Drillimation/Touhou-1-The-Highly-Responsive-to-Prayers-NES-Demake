if audio_is_playing(global.song) {
	audio_stop_sound(global.song);
	global.song = audio_play_sound(snd_world3_boss_m,10,true);
}
else {
	global.song = audio_play_sound(snd_world3_boss_m,10,true);
}
global.world = 3;
global.stage = 15;
global.time = 400;