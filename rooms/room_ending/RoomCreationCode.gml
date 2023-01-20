audio_stop_sound(global.song);
global.song = audio_play_sound(snd_ending,10,true);
if global.continuesused >= 1 {
	global.victoryachieved = false
}
else {
	global.victoryachieved = true;
}