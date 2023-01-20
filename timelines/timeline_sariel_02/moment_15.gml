scr_shoot_bullet_positioned(240,72,obj_bullet,1.5,0+dir);
scr_shoot_bullet_positioned(240,72,obj_bullet,1.5,180+dir);
scr_shoot_bullet_positioned(16,72,obj_bullet,1.5,0-dir);
scr_shoot_bullet_positioned(16,72,obj_bullet,1.5,180-dir);
ammo -= 1;
dir += 60 - (global.difficulty * 15)