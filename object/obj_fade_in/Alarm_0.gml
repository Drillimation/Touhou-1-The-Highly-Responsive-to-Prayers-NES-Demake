/// @description Repeat the event until the screen fully fades in
// You can write your code in this editor
if (opacity = 0)
{
	instance_destroy();
}
else
{
	opacity -= 0.25;
}

alarm[0] = 5;