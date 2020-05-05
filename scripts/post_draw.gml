shader_start()

if(SL_trans_timer < 7){
	sltrans = draw_sprite_ext(sprite_get("SL_transformation"), SL_trans_timer, x - 80, y - 120, 1, 1, 1, -1, 1);
}

if(slActive){
	if(state != PS_IDLE && state != PS_DASH){
		SL_fizzle = draw_sprite_ext(sprite_get("SL_fizzle"), SL_fizzle_timer, x - 58*spr_dir, y - 70, spr_dir * 1.1, 1.05, 0, -1, 1);
	}
}

shader_end()