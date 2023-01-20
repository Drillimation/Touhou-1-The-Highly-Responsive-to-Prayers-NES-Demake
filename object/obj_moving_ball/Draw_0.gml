/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_self();
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(252,252,252));
global.font = font_add_sprite(spr_font,32,false,0);
draw_set_font(global.font);
draw_set_alpha(fade1);
draw_text(128,120,text1);
draw_set_alpha(fade2);
draw_text(128,136,text2);
draw_set_alpha(1);