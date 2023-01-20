/// Usage: scr_shoot_bullet(obj,speed,direction);
function scr_shoot_bullet(argument0, argument1, argument2) {
	a = argument0;
	b = argument1;
	c = argument2;
	var inst = instance_create_depth(x, y, -100, a);
	inst.speed = b;
	inst.direction = c;


}
