/// @description When player performs an action per step

#region Controls
key_up = keyboard_check(ord("W"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));
key_jump_down = keyboard_check(vk_space);
key_jump_up = keyboard_check_released(vk_space);
#endregion

#region Grounded Check
grounded = false;
if (place_meeting(x, y + 1, obj_block) || place_meeting(x, y + 1, obj_slope))
{
	grounded = true;
}
#endregion

#region Climbing Check
if (instance_place(x, y, obj_ladder))
{
	if (key_up || key_down)
	{
		climbing = true;
		grv = 0;
		vsp = 0;
		sprite_index = spr_player_climb;
	}
}
else
{
	climbing = false;
	vspeed = 0;
}

if (climbing)
{
	grv = 0;
	vsp = 0;
	sprite_index = spr_player_climb;
	if (key_up) //moving up
	{
		vsp = -climb_speed;
		image_speed = 1;
	}
	if (key_down && !grounded) //moving down
	{
		vsp = climb_speed;
		image_speed = 1;
	}
	if (place_meeting(x, y + climb_speed, obj_block))
	{
		climbing = false;
	}
}
#endregion

#region State Check
switch (state)
{
	case states.normal: scr_player_normal(); break;
	case states.landing: scr_player_landing(); break;
	case states.damaged: scr_player_damaged(); break;
}
#endregion

#region Gravity Check
if (!grounded && !climbing)
{
	vsp += grv;
}
#endregion

scr_player_collision();