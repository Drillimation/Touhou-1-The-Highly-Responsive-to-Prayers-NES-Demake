/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_start) {
	audio_play_sound(snd_menuconfirm,10,false);
	instance_create_depth(0,0,-1000,obj_fade_transition);
}