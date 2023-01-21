/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_get_bomb,10,false);
score += global.world * 500
global.bombs += 1;
var inst = instance_create_depth(x,y,-1000,obj_sub_score_display)
inst.display_score = global.world * 500;
instance_destroy();