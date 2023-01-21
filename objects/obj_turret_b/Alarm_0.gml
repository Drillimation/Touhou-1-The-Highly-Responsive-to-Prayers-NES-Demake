/// @description Insert description here
// You can write your code in this editor
switch(typ) {
	case 0:
		scr_shoot_bullet(obj_bullet,2.5,255);
		scr_shoot_bullet(obj_bullet,2.5,285);
		alarm[0] = 20 - (global.difficulty * 5)
		break;
	case 1:
		scr_shoot_bullet(obj_bullet,0,0);
		if direction <= 90 {
			direction -= 15;
		}
		else {
			direction += 15;
		}
		alarm[0] = 20;
		break;
}