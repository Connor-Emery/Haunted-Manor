/// @description When player is created

gravity_direction = 270;

enum states
{
	normal, //player may perform other actions
	landing, //player is landing, and must wait till landing animation finishes
	damaged //player receives damage
}
state = states.normal; //default state is normal