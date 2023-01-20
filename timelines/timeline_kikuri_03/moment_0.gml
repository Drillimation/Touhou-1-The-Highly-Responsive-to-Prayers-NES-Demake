ammo = (global.difficulty * 8) + 8
if !instance_exists(obj_turret) {
	instance_create_depth(64,48,0,obj_turret);
	instance_create_depth(192,48,0,obj_turret);
}
dir = 0;