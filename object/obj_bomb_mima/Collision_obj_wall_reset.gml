/// @description Insert description here
// You can write your code in this editor
instance_destroy();
if audio_is_playing(snd_explosion) {
	audio_stop_sound(snd_explosion);
	audio_play_sound(snd_explosion,10,false);
}
else {
	audio_play_sound(snd_explosion,10,false);
}
instance_create_depth(x,y,-1000,obj_explosion);