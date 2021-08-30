// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_normal()
{
	#region Movement Calculation
	var walk = key_right - key_left;
	hsp = walk * walk_speed;
	grv = 0.5;
	#endregion

	#region Jump Detection
	if (grounded && key_jump_up) //if player is on ground and released spacebar
	{
		vsp = -jump_height; //jump
		audio_play_sound(snd_player_jump, 1, false);
		grounded = false;
	}
	#endregion

	#region Animation
	if (!grounded && !climbing) //mid-air
	{
		sprite_index = spr_player_fall;
	}
	else if (!climbing)
	{
		if (hsp == 0 && !key_jump_down) //not moving
		{
			sprite_index = spr_player_idle;
		}
		else if (grounded && key_jump_down) //preparing to jump
		{
			hsp = 0;
			sprite_index = spr_player_jump;
		}
		else //walking
		{
			sprite_index = spr_player_walk;
		}
	}

	if (hsp != 0)
	{
		image_xscale = sign(hsp) * 0.10; //flip sprite
	}
	#endregion
}