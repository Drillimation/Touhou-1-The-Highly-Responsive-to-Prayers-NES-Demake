function scr_get_input() {
	// @desc scr_get_input()
	//Keyboard Input
	rKey = keyboard_check_pressed(vk_right);
	lKey = keyboard_check_pressed(vk_left);

	xaxis = (rKey - lKey);

	//Gamepad Input
	if (gamepad_is_connected(0))
	{
		rKey = sign(gamepad_axis_value(0,gp_axislh) > 0);
		lKey = sign(gamepad_axis_value(0,gp_axislh) < 0);
	
		xaxis = (rKey - lKey);
	
		gamepad_set_axis_deadzone(0,0.5)
	}


}
