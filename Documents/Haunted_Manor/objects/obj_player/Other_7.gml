/// @description When player's animation ends

switch (sprite_index)
{
	case spr_player_land: state = states.normal; break;
	case spr_player_damaged: state = states.normal; break;
}