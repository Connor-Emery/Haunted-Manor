/// @description Drawing player's GUI
if (room == Room1 || room = Room2 || room = Room3 || room = Room4)
{
	for (var i = 0; i < 3; i++)
	{
		draw_sprite(spr_life_dead, 0, (50 + 100 * i), 50)
	}
	for (var i = 0; i < lives; i++)
	{
		draw_sprite(spr_life_alive, 0, (50 + 100 * i), 50)
	}
}