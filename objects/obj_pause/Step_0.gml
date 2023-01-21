/// @description Insert description here
// You can write your code in this editor
scr_menu_input();

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

if (menu_index != last_selected) audio_play_sound(snd_menuselect,1,false)

last_selected = menu_index;

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	switch(menu_index) {
		case 0:
			audio_play_sound(snd_menuconfirm,1,false)
			instance_destroy();
			audio_resume_sound(global.song)
			instance_activate_all();
			obj_control.paused = false;
			if instance_exists(obj_yinyang_orb) {
				runtimer = true;
			}
			break;
		case 1:
			audio_play_sound(snd_menuconfirm,1,false)
			instance_destroy();
			audio_stop_sound(global.song);
			room_goto(room_title);
			break;
	}
}