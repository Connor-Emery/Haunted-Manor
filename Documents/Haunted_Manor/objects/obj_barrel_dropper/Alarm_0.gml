/// @description Insert description here
// You can write your code in this editor
with(instance_create_layer(x,y, "Instances", obj_barrel_2)){
	image_xscale = .05;
	image_yscale = .05;
}
alarm[0] = (room_speed * 3) + random(room_speed * 2);