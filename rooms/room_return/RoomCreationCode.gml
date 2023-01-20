ini_open("highscore.sav");
ini_write_real("highscore","score",global.highscore);
ini_close();
audio_stop_sound(global.song);
room_goto(room_title);