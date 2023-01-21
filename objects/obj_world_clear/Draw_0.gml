/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(make_color_rgb(248,56,0));
draw_set_halign(fa_left);
draw_text(0,0,"World " + string(global.world) + " clear");
draw_set_halign(fa_right);
if draw_alarm >= 1 {
	draw_text(128,16,diff[0]);
	if draw_alarm >= 2 {
		draw_text(128,24,diff[1]);
		if draw_alarm >= 3 {
			draw_text(128,32,diff[2]);
			if draw_alarm >= 3 {
				draw_text(128,40,diff[3]);
				if draw_alarm >= 4 {
					draw_set_halign(fa_center);
					draw_text(64,192,@"Push start
					to continue")
				}
			}
		}
	}
}