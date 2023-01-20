/// @description Insert description here
// You can write your code in this editor
randomize();
var inst = instance_find(obj_warp, irandom(instance_number(obj_warp) - 1));
x = inst.x
y = inst.y - 16
vspeed = -1
hspeed = choose(-1.5,1.5);