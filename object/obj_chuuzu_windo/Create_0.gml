/// @description Insert description here
// You can write your code in this editor
ini_open("options.sav");
fs = ini_read_real("main","fullscreen",0);
switch(fs) {
	case 0:
		global.fullscreen = false;
		break;
	case 1:
		global.fullscreen = true;
		break;
}
ini_close();
