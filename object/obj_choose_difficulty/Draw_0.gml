/// @description Insert description here
// You can write your code in this editor
var i = 0;
repeat (buttons) 
{
draw_set_font(global.font);
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(252,252,252));
if (menu_index == i) draw_set_color(make_color_rgb(246,56,0));
draw_text(x, y + (button_h * i), button[i]);
i++;
}
draw_set_color(make_color_rgb(252,252,252));
draw_set_halign(fa_left);
draw_text(0,216,@"@2020 Drillimation Systems
Original by Team Shanghai Alice")