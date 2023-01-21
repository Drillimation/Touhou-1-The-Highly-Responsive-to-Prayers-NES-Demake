/// @description Insert description here
// You can write your code in this editor
score = 0;
ini_open("highscore.sav")
global.highscore = ini_read_real("highscore","score",76500);
ini_close();
lives = 3;
global.bombs = 3;
global.stage = 1;
global.world = 1;
global.continuesused = 0;
global.maxcombo = 1;
global.scoreforlife = 40000;
global.victoryachieved = false;