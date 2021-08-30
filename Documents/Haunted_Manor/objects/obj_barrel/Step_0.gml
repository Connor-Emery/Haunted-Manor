/// @description When barrel performs an action per step

#region Grounded Check
grounded = false;
if (place_meeting(x, y + 1, obj_block) || place_meeting(x, y + 1, obj_slope))
{
	grounded = true;
	
}
#endregion

if (place_meeting(x + hspeed, y, obj_block) || place_meeting(x + hspeed, y, obj_slope))
{
	hspeed = hspeed * -1;
	image_xscale = image_xscale * -1;
}

if (place_meeting(x, y + vspeed, obj_block) || place_meeting(x, y + vspeed, obj_slope)) //vertical block collision
{
	vspeed = 0;
}

if (!grounded)
{
	vspeed += grv;
}