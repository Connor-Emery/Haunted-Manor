// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_collision()
{
	if (place_meeting(x + hsp, y, obj_block)) //horizontal block collision
	{
		while (!place_meeting(x + sign(hsp), y, obj_block))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	else if (place_meeting(x + hsp, y, obj_slope)) //horizontal slope collision
	{
		yplus = 0;
		while (place_meeting(x + hsp, y - yplus, obj_slope) && yplus <= abs(1 * hsp))
		{
			yplus += 1;
		}
		if (place_meeting(x + hsp, y - yplus, obj_slope))
		{
			while (!place_meeting(x + sign(hsp), y, obj_slope))
			{
				x += sign(hsp);
			}
			hsp = 0;
		}
		else
		{
			y -= yplus;
		}
	}
	x += hsp;
	
	if (!place_meeting(x, y, obj_slope) && vsp >= 0 && place_meeting(x, y + 2 + abs(hsp), obj_slope))
	{
		while(!place_meeting(x, y + 1, obj_slope))
		{
			y += 1;
		}
	}

	if (place_meeting(x, y + vsp, obj_block)) //vertical block collision
	{
		while (!place_meeting(x, y + sign(vsp), obj_block))
		{
			y += sign(vsp);
		}
		if (vsp > 11) //if player is about to land
		{
			state = states.landing; //swap to landing state
			image_index = 0;
		}
		vsp = 0;
	}
	else if (place_meeting(x, y + vsp, obj_slope)) //vertical slope collision
	{
		while (!place_meeting(x, y + sign(vsp), obj_slope))
		{
			y += sign(vsp);
		}
		if (vsp > 11) //if player is about to land
		{
			state = states.landing; //swap to landing state
			image_index = 0;
		}
		vsp = 0;
	}
	y += vsp;
}