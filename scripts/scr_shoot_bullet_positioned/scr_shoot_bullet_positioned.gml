/// Usage: scr_shoot_bullet_positioned(x,y,obj,speed,direction);
function scr_shoot_bullet_positioned(argument0, argument1, argument2, argument3, argument4) {
	a = argument2;
	b = argument3;
	c = argument4;
	d = argument0;
	e = argument1;
	var inst = instance_create_depth(d, e, -100, a);
	inst.speed = b;
	inst.direction = c;


}
