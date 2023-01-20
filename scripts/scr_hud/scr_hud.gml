function scr_hud() {
	displaylives = lives - 1
	draw_set_font(global.font);
	draw_set_color(make_color_rgb(248,56,0));
	draw_set_halign(fa_left);
	draw_text(16,0,"1UP")
	if global.time >= 1 {
		draw_text(192,8,"TIME");
	}
	draw_set_halign(fa_center);
	draw_text(128,0,"HIGH SCORE");
	draw_set_halign(fa_right);
	draw_set_color(make_color_rgb(252,252,252));
	draw_text(152,8,global.highscore);
	draw_text(56,8,score);
	draw_text(256,0,difficulty[global.difficulty]);
	draw_text(256,224,"ROUND");
	if global.time >= 1 {
		draw_text(256,8,global.time);
	}
	else {
		draw_text(256,8,"HURRY UP");
	}
	draw_set_color(make_color_rgb(252,252,252));
	draw_text(256,232,global.stage);
	if lives >= 7 {
		draw_sprite(spr_life_icon,0,0,224)
		draw_text(40,224," * " + string(displaylives))
	}
	if lives >= 2 and lives <= 6 {
		for (var i = 0; i < lives - 1; i += 1) {
			draw_sprite(spr_life_icon,0,0 + (i * 8),224);
		}
	}
	if global.bombs >= 6 {
		draw_sprite(spr_bomb_icon,0,0,232)
		draw_text(40,232," * " + string(global.bombs))
	}
	if global.bombs >= 1 and global.bombs <= 5 {
		for (var i = 0; i < global.bombs; i += 1) {
			draw_sprite(spr_bomb_icon,0,0 + (i * 8),232);
		}
	}
	draw_set_halign(fa_left);
	draw_text(48,224,"REIMU")
	if global.life >= 1 {
		for (var i = 0; i < global.life; i += 1) {
			draw_sprite(spr_life_segment,0,88 + (i * 4),224);
		}
	}


}
