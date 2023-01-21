/// @description Insert description here
// You can write your code in this editor
font = font_add_sprite(spr_font_score_numerals,48,false,0);
draw_set_font(font);
draw_set_color(make_color_rgb(248,248,248));
draw_set_halign(fa_center);
draw_text(x,y,string(display_score));