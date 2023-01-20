/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_right);
draw_set_color(make_color_rgb(252,252,252));
if draw_alarm >= 1 {
	draw_text(232,32,mode[global.gamemode,global.region]);
	if draw_alarm >= 2 {
		draw_text(232,48,diff[global.difficulty]);
		if draw_alarm >= 3 {
			draw_text(232,64,score);
			if draw_alarm >= 4 {
				draw_text(232,80,global.continuesused);
				if draw_alarm >= 5 {
					draw_set_halign(fa_center);
					draw_text(192,128,@"Push start
					to continue")
				}
			}
		}
	}
}