/// @description Insert description here
// You can write your code in this editor
ini_open("options.sav")
rg = ini_read_string("main","region","EN");
if rg != "JP" {
	global.region = 0
}
else {
	global.region = 1
}
ini_close();
image_speed = 0;
image_index = global.region;