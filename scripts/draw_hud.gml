
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

var bar, meter, cycle, bx, by;
bar = sprite_get("slbaroutside")
meter = sprite_get("slbarpurple")
cycle = sprite_get("slbarhurtcycle")
bx = 10
by = -14


draw_sprite(bar,slBarIndex,temp_x+bx-9,temp_y+by-21)
draw_sprite(meter,(floor(slTimer)/slTimerLimit)*23,temp_x+bx+11,temp_y+by-3)
draw_sprite(cycle,(floor(slHurtTimer)/slMaxHurtTime)*12,temp_x+bx-9,temp_y+by-9)