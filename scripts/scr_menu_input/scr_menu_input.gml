function scr_menu_input() {
	if (abs(gamepad_axis_value(0, gp_axislv) > 0) and (alarm[0] <= 0)) { 
		up = !down;
		down = sign(gamepad_axis_value(0, gp_axislv) > 0);
		alarm[0] = room_speed * 0.15;
	} else { down = false; }
	if (abs(gamepad_axis_value(0, gp_axislv) < 0) and (alarm[0] <= 0)) { 
		up = sign(gamepad_axis_value(0, gp_axislv) < 0); 
		down = !up;
		alarm[0] = room_speed * 0.15;
	} else { up = false; }

	menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up) | keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))| gamepad_button_check_pressed(0,gp_padd) - gamepad_button_check_pressed(0,gp_padu) | down - up;

	gamepad_set_axis_deadzone(0,0.5);


}
