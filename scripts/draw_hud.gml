
//#region Fspecial Cooldown [DEBUG]
//var cooldownbar;
//cooldownbar = sprite_get("cooldownbar")
//draw_sprite_ext(cooldownbar,0,temp_x,temp_y-14,1,1,0,c_dkgray,1)
//draw_sprite_ext(cooldownbar,0,temp_x,temp_y-14,move_cooldown[AT_FSPECIAL]/40,1,0,c_white,1)

//#region SL 
//if ("slTimer" in self)
//	draw_debug_text(temp_x,temp_y-40,"SL timer: " + string(slTimer))
//if ("slHurtTimer" in self)
//	draw_debug_text(temp_x,temp_y-60,"SL hurt timer: " + string(slHurtTimer))
//if ("slTimer" in self)
//{
//	var t = (slActive? "ON":"OFF");
//	draw_debug_text(temp_x,temp_y-80,"SL active: " + t)
//}
//#endregion

//#endregion

if ("slBarIndex" in self)
{
	var bar, meter, cycle, bx, by;
	bar = sprite_get("slbaroutside");
	meter = sprite_get("slbarpurple");
	cycle = sprite_get("slbarhurtcycle");
	bx = 10;
	by = -14;
	shader_start();
	draw_sprite(bar,slBarIndex,temp_x+bx-9,temp_y+by-21);
	draw_sprite(cycle,(floor(slHurtTimer)/slMaxHurtTime)*12,temp_x+bx-9,temp_y+by-9);
	if ("hud_timer" in self && hud_timer != 0)
	{
		//draw_rectangle_colour(temp_x+bx+11, temp_y+by-3, temp_x+bx+11+hud_timer*2-1, temp_y+by+2, c_white, c_white, c_white, c_white, false);
		draw_sprite(meter,hud_timer,temp_x+bx+11,temp_y+by-3);
		draw_rectangle_colour(temp_x+bx+11+hud_timer*2, temp_y+by-3, temp_x+bx+11+hud_timer*2+1, temp_y+by+2, c_black, c_black, c_black, c_black, false);
	}
	shader_end();
}

if ("slActive" in self && slActive)
{
	shader_start();
	draw_sprite(sprite_get(state_cat==SC_HITSTUN?"SL_hurts":"SL_huds"),0,temp_x+28,temp_y+8);
	shader_end();
}