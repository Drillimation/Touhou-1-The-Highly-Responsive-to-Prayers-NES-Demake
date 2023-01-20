instance_destroy(obj_turret_b);
var inst1 = instance_create_depth(128,32,0,obj_turret_b);
inst1.speed = 1.5;
inst1.direction = choose(0,180);
inst1.typ = 1;