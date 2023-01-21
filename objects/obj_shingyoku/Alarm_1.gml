/// @description Insert description here
// You can write your code in this editor
attack = false;
ammo = (global.difficulty * 5) + 5
sprite_index = spr_shingyoku_idle;
if obj_reimu.x < x {
	speed = 1.5
	direction = 225;
}
if obj_reimu.x > x {
	speed = 1.5
	direction = 315;
}