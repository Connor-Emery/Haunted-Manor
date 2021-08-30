/// @description Game restart / end 
if keyboard_check_pressed(ord("R")) game_restart() //press R too restart game
if keyboard_check_pressed(vk_escape) game_end() //press ESC to close came

if (lives <= 0)
{
	global.game_over = true;
}

if (global.game_over = true)
{
	room_goto(room_game_over);
}