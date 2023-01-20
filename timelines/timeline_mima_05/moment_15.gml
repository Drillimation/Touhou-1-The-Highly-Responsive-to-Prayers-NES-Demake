randomize();
if ammo >= 1 {
	instance_create_depth(x,y,-1000,obj_bomb_mima);
	audio_play_sound(snd_shortfall,10,false);
	ammo -= 2;
}