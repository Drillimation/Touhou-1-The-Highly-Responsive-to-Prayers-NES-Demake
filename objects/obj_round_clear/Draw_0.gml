/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font);
draw_set_color(make_color_rgb(0,0,0));
draw_set_alpha(box_opac);
draw_rectangle(x - 64,y - 48,x + 64,y + 48,false);
if comp == true {
	draw_set_color(make_color_rgb(252,252,252));
	draw_set_halign(fa_center);
	draw_text(x,y - 40,"Round " + string(global.stage) + " clear");
	if push_start == true {
		draw_text(x,y + 24,@"Push start
		to continue");
	}
	draw_set_halign(fa_left);
	draw_text(x - 56,y - 24,@"Time
	Combo
	Life
	Total");
	draw_set_halign(fa_right);
	draw_text(x + 56,y - 24,timebonus);
	draw_text(x + 56,y - 16,highcombo);
	draw_text(x + 56,y - 8,rem_life);
	draw_text(x + 56,y,total);
}
draw_set_alpha(1);