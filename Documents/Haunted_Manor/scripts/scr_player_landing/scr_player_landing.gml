// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_landing()
{
	if (sprite_index != spr_player_damaged)
	{
		hsp = 0;
		sprite_index = spr_player_land;
	}
}