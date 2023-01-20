/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(global.font);
draw_set_color(make_color_rgb(248,248,248))
draw_set_halign(fa_left)
draw_text(48,232,"ENEMY")
if life >= 1 {
	for (var i = 0; i < life; i += 1) {
		draw_sprite(spr_life_segment,0,88 + (i * 4),232);
	}
}
//draw_text(0,16,ammo)