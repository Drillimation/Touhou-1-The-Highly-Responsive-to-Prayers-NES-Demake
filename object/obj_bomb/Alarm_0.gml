/// @description Insert description here
// You can write your code in this editor
instance_destroy();
global.bombs -= 1;
audio_play_sound(snd_explosion,10,false);
instance_create_depth(x,y,-1000,obj_explosion);