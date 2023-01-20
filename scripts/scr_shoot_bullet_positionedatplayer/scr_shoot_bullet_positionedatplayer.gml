/// Usage: scr_shoot_bullet_positionedatplayer(x,y,obj,speed,direction);
function scr_shoot_bullet_positionedatplayer(argument0, argument1, argument2, argument3, argument4) {

	a = argument2;
	b = argument3;
	c = argument4;
	d = argument0;
	e = argument1;
	if instance_exists(obj_reimu) {
		var inst = instance_create_depth(d, e, -100, a);
		inst.speed = b;
		inst.direction = point_direction(d, e, obj_reimu.x, obj_reimu.y) + c;
	}


}
