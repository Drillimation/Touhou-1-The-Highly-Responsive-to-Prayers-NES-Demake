/// @description Insert description here
// You can write your code in this editor
attack = true;
if sprite_index == spr_shingyoku_idle {
	if dir < 360 {
		scr_shoot_bullet(obj_bullet,1.5,dir);
		dir += 10;
		alarm[0] = 5;
	}
	else {
		alarm[1] = 60;
	}
}
if sprite_index == spr_shingyoku_female_idle or sprite_index == spr_shingyoku_female_attack {
	sprite_index = spr_shingyoku_female_attack;
	if ammo >= 1 {
		scr_shoot_bullet_positioned(x - 24, y,obj_bullet,1.5,285);
		scr_shoot_bullet_positioned(x + 24, y,obj_bullet,1.5,255);
		ammo -= 1;
		alarm[0] = 5;
	}
	else {
		sprite_index = spr_shingyoku_idle;
		alarm[1] = 60;
	}
}
if sprite_index == spr_shingyoku_male_idle or sprite_index == spr_shingyoku_male_attack {
	sprite_index = spr_shingyoku_male_attack;
	if ammo >= 1 {
		for(var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_positionedatplayer(x - 24, y,obj_bullet,1.5 - (i * 0.125),0);
			scr_shoot_bullet_positionedatplayer(x + 24, y,obj_bullet,1.5 - (i * 0.125),0);
			scr_shoot_bullet_positionedatplayer(x - 12, y - 24,obj_bullet,1.5 - (i * 0.125),0);
			scr_shoot_bullet_positionedatplayer(x + 12, y - 24,obj_bullet,1.5 - (i * 0.125),0);
			scr_shoot_bullet_positionedatplayer(x - 12, y + 24,obj_bullet,1.5 - (i * 0.125),0);
			scr_shoot_bullet_positionedatplayer(x + 12, y + 24,obj_bullet,1.5 - (i * 0.125),0);
		}
		ammo -= 5;
		alarm[0] = 15;
	}
	else {
		sprite_index = spr_shingyoku_idle;
		alarm[1] = 60;
	}
}