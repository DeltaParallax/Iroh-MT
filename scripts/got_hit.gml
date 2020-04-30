if(attack == AT_DSPECIAL && window == 1 && !slActive){
	window = 3;
	window_timer =0;
	take_damage(player,-1,-enemy_hitboxID.damage); //Remove enemy damage during counter
	
	slTimer += 200
}
else
{
	slTimer += 6 * enemy_hitboxID.damage;
}