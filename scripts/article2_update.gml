if(state == 0){
	image_index += 0.2;
	
	if(state_timer == 28){
		state = 1;
		state_timer = 0;
		image_index = 0;
	}
	
	
}

if(state == 1){
	sprite_index = sprite_get("SL_sparkS");
	image_index += 0.2;
	if(state_timer = 20){
		instance_destroy();
		exit;
	}
}

state_timer++;