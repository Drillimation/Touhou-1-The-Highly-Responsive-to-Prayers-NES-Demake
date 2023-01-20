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
			score = round(((score / 10) / 2) * 10);
			global.continuesused += 1;
			lives = 3;
			room_restart();
			break;
		case 1:
			audio_play_sound(snd_menuconfirm,1,false)
			instance_destroy();
			room_goto(room_results);
			break;
	}
}