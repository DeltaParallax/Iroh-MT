if(slActive && (attack == AT_DSPECIAL||(runeL&&command_input>1))){
	attack = (free?AT_DSPECIAL_AIR:AT_DSPECIAL_2);
	if (command_input>1)
	{
		command_input = 0;
		dspec_buff = true;
		sound_play(sound_get("power_geyser"));
	}
}