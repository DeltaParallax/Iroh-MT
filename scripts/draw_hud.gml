
//#region Fspecial Cooldown [DEBUG]
//var cooldownbar;
//cooldownbar = sprite_get("cooldownbar")
//draw_sprite_ext(cooldownbar,0,temp_x,temp_y-14,1,1,0,c_dkgray,1)
//draw_sprite_ext(cooldownbar,0,temp_x,temp_y-14,move_cooldown[AT_FSPECIAL]/40,1,0,c_white,1)

//#region SL 
if ("slTimer" in self)
	draw_debug_text(temp_x,temp_y-40,"SL timer: " + string(slTimer))
if ("slHurtTimer" in self)
	draw_debug_text(temp_x,temp_y-60,"SL hurt timer: " + string(slHurtTimer))
if ("slTimer" in self)
{
	var t = (slActive? "ON":"OFF");
	draw_debug_text(temp_x,temp_y-80,"SL active: " + t)
}
//#endregion

//#endregion