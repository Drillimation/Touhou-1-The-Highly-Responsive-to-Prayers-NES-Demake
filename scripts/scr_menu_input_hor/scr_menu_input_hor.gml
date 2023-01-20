function scr_menu_input_hor() {
	if (abs(gamepad_axis_value(0, gp_axislh) > 0) and (alarm[0] <= 0)) { 
		up = !down;
		down = sign(gamepad_axis_value(0, gp_axislh) > 0);
		alarm[0] = room_speed * 0.15;
	} else { down = false; }
	if (abs(gamepad_axis_value(0, gp_axislh) < 0) and (alarm[0] <= 0)) { 
		up = sign(gamepad_axis_value(0, gp_axislh) < 0); 
		down = !up;
		alarm[0] = room_speed * 0.15;
	} else { up = false; }

	menu_move = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left) | keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))| gamepad_button_check_pressed(0,gp_padr) - gamepad_button_check_pressed(0,gp_padl) | down - up;

	gamepad_set_axis_deadzone(0,0.5);


}
