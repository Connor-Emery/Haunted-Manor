/// @description When player collides with barrel

if (vsp > 0) && (self.y < other.y)
{
	instance_destroy(other) //destroy the barrel
}
else
{
	instance_destroy(other) //destroy the barrel
	state = states.damaged; //set state
	audio_play_sound(snd_player_hit, 1, false); //play injured sound
	lives -= 1;
}