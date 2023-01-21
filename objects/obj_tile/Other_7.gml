/// @description Insert description here
// You can write your code in this editor
if sprite_index == spr_tile_generate {
	sprite_index = spr_tile;
}
if sprite_index == spr_tile_destroy and was_hit == true {
	instance_destroy();
}