/// @description Insert description here

global.game_over = false;
lives = 3;

if (room == Room1 || room = Room2 || room = Room3 || room = Room4)
{
	global.recent_room = room;
}
if (room = room_hub || room = room_selection)
{
	if !audio_is_playing(snd_hub)
	{
		audio_play_sound(snd_hub, 1, true);
	}
}
else
{
	audio_stop_sound(snd_hub);
}

if (room == Room1 || room = Room2 || room = Room3 || room = Room4)
{
	if !audio_is_playing(snd_barrels)
	{
		audio_play_sound(snd_barrels, 1, true);
	}
	if !audio_is_playing(snd_basement_bgm)
	{
		audio_play_sound(snd_basement_bgm, 1, true);
	}
}
else
{
	audio_stop_sound(snd_barrels);
	audio_stop_sound(snd_basement_bgm);
}

if (room == room_main_menu || room == room_clear || room == room_game_over || room == room_credits || room == room_how_to_play)
{
	if !audio_is_playing(snd_main_menu)
	{
		audio_play_sound(snd_main_menu, 1, true)
	}
}
else
{
	audio_stop_sound(snd_main_menu);
}