/// @description Insert description here
// You can write your code in this editor
if runtimer == true {
	if global.time >= 1 {
		global.time -= 1
		alarm[0] = 60;
	}
	if global.time == 0 {
		if !audio_is_playing(snd_alarm) {
			audio_play_sound(snd_alarm,10,false);
		}
		alarm[1] = 60;
	}
}