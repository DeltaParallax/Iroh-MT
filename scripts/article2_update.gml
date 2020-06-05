uses_shader = true;

if(state == 0){
	image_index += 0.35
	
	if(state_timer == 25){
		state = 1;
		state_timer = 0;
		image_index = random_func(3, 3, true);
	}
	
	
}

if(state == 1){
	sprite_index = sprite_get("SL_sparkS");
	image_index += 0.4
	if(state_timer >= 9 + random_func(10, 20, true)){
		instance_destroy();
		exit;
	}
}

state_timer++;