/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_dialogbox,0,x,y);
var i = 0;
repeat (buttons) 
{
draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(252,252,252));
if (menu_index == i) draw_set_color(make_color_rgb(246,56,0));
draw_text(x, y + (button_h * i), button[i]);
i++;
}
draw_set_color(make_color_rgb(252,252,252));
draw_set_color(make_color_rgb(246,56,0));
draw_text(x,y - 16,"Paused");