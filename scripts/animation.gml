///animation
/*
switch (state){
    case PS_WALK:
	if walk_indicate == -1 or walk_indicate = -.5
	{
		sprite_index = sprite_get("walkstart");
		walk_indicate +=0.5;
	}
	else
	if (walk_indicate == 0 and sprite_index != sprite_get("walk"))
	{
		sprite_index = sprite_get("walk");
	}
    break;

    default:
	if walk_indicate == -1 or walk_indicate == -.5
	{
		exit;
	}
	else
	if walk_indicate == 0 or walk_indicate == 0.5
	{
		walk_indicate +=.5
		sprite_index = sprite_get("walkend");
	}
	else
	if walk_indicate == 1
	{
		walk_indicate = -1
	}
	
	case PS_PRATFALL:
	if (state_timer < 8){
		image_index = floor(state_timer / 2);
		
	}
		else{
			image_index = 2 + (floor(state_timer / 4) % 2)
			
		}
	break;
} //needs to be looked at

*/

if(attack == AT_FSTRONG && window == 1 && state == PS_ATTACK_GROUND){
	
	image_index = floor(strong_charge / 6) % 4;
}