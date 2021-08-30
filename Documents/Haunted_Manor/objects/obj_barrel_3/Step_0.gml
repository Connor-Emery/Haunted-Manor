/// @description Insert description here
// You can write your code in this editor

#region Grounded Check
grounded = false;
if (place_meeting(x, y + 1, obj_block) || place_meeting(x, y + 1, obj_slope))
{
	grounded = true;
}
#endregion

if (place_meeting(x + hspeed, y, obj_block) || place_meeting(x + hspeed, y, obj_slope))
{
	if(hspeed = 0){
		hspeed = 6.1
		image_xscale = image_xscale * -1;
	}
	hspeed = hspeed * -1;
	image_xscale = image_xscale * -1;
}

if (place_meeting(x, y + vspeed, obj_block) || place_meeting(x, y + vspeed, obj_slope)) //vertical block collision
{
	if(hspeed = 0){
		hspeed = 6.1
		image_xscale = image_xscale * -1;
	}
	vspeed = 0;
}

if (!grounded)
{
	vspeed += grv;
}