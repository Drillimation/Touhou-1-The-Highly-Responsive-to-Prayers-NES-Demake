/// Usage: scr_shoot_bullet_atplayer(obj,speed,direction);
function scr_shoot_bullet_atplayer(argument0, argument1, argument2) {
	a = argument0;
	b = argument1;
	c = argument2;
	if instance_exists(obj_reimu) {
		var inst = instance_create_depth(x, y, -100, a);
		inst.speed = b;
		inst.direction = point_direction(x, y, obj_reimu.x, obj_reimu.y) + c;
	}


}
