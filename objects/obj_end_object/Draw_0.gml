/// @description Insert description here
// You can write your code in this editor
draw_set_color(make_color_rgb(252,252,252));
draw_set_halign(fa_center);
if global.victoryachieved == true {
	draw_self();
	draw_text(128,208,@"CONGRATULATIONS!
	
	GOOD ENDING!");
}
else {
	draw_text(128,208,@"TOO BAD!
	
	BAD ENDING!");
}