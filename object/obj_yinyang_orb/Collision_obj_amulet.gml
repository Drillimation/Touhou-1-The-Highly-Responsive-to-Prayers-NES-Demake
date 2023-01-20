/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,-1000,obj_hit);
instance_destroy(other);
if other.x < x {
	hspeed = ((x - other.x) / 10) + 1
}
if other.x > x {
	hspeed = ((x - other.x) / 10) - 1
}
vspeed = -2;