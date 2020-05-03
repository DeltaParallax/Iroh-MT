/*if(state == 0){
	if(player_id.spark_state == 1){
		state = 1;
		state_timer = 0;
		image_index = 0;
	}
}

if(state == 1){
	if(player_id.state == PS_IDLE || player_id.state == PS_DASH){
		visible = false;
	}
	else{
		visible = true;
	}
	depth = -10;
	sprite_index = sprite_get("SL_fizzle");
	image_index += 0.2;
	spr_dir = player_id.spr_dir;
	x = player_id.x - 55*player_id.spr_dir;
	y = player_id.y - 68;
	
	if(player_id.slTimer <= 0){
		state = 100;
	}
}

if(state = 100){
	instance_destroy();
	exit;
}


state_timer++