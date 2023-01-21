/// @description Insert description here
// You can write your code in this editor
if y > 166 {
	direction = 90;
	speed = 1;
}
if y < 64 and direction == 90 {
	if attack == false and speed != 0 {
		speed = 0;
		attack = true;
		speed = 0;
		if alarm[0] < 0 {
			randomize();
			sprite_index = choose(spr_shingyoku_female_idle,spr_shingyoku_male_idle,spr_shingyoku_idle);
			alarm[0] = 60;
		}
		else {
			randomize();
			sprite_index = choose(spr_shingyoku_female_idle,spr_shingyoku_male_idle,spr_shingyoku_idle);
			alarm[0] = 60;		
		}
	}
}
if life == 0 {
	audio_stop_sound(global.song);
	audio_play_sound(snd_explosion,10,false);
	instance_destroy();
	obj_control.runtimer = false;
	score += global.world * 5000
	instance_create_depth(x,y,-1000,obj_delay);
	var inst = instance_create_depth(x,y,-1000,obj_sub_score_display)
	inst.display_score = global.world * 5000;
}