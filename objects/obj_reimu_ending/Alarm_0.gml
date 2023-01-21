/// @description Insert description here
// You can write your code in this editor
with(obj_yinyang_orb) {
	instance_destroy();
	audio_play_sound(snd_transform,10,false);
		instance_create_depth(x,y,-1000,obj_end_object)
}
sprite_index = spr_reimu_ending2;