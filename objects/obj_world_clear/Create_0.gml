/// @description Insert description here
// You can write your code in this editor
draw_alarm = 0;

image_index = 0
image_speed = 0;

diff[0] = global.time * 100
diff[1] = lives * 1000
diff[2] = global.world * 5000
diff[3] = diff[0] + diff[1] + diff[2];
score += diff[3];

alarm[0] = 60;