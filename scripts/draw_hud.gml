
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


if ("slBarIndex" in self and "slActive" in self)
{
	//check to see if you're ready to start SL mode.
	var slReady, rate;
	slReady = (!slActive and slTimer >= slTimerLimit)
	rate = slReady ? round((get_gameplay_time() mod 10) / 10) : 1
	
	//Prepare SL bar sprites, and offsets
	var bar, meter, cycle, bx, by;
	bar = sprite_get(slReady ? "hud_shine" : "slbaroutside");
	meter = sprite_get("slbarpurple");
	cycle = sprite_get("slbarhurtcycle");
	bx = 10 + slHUDshakeOffset*2;
	by = -15;
	
	//Draw
	shader_start();
	draw_roundrect_color(temp_x+bx+8, temp_y+by-6, temp_x+bx+12+46,temp_y+by+4, c_gray,  c_gray, false);
	draw_sprite(cycle,(floor(slHurtTimer)/slMaxHurtTime)*12,temp_x+bx-9,temp_y+by-9);
	draw_sprite(bar,slReady ? rate : floor(slBarIndex),temp_x+bx-9,temp_y+by-21);
	if ("hud_timer" in self && hud_timer != 0 and !slReady)
	{
		//draw_rectangle_colour(temp_x+bx+11, temp_y+by-3, temp_x+bx+11+hud_timer*2-1, temp_y+by+2, c_white, c_white, c_white, c_white, false);
		draw_sprite(meter,hud_timer,temp_x+bx+11,temp_y+by-3);
		draw_rectangle_colour(temp_x+bx+11+hud_timer*2, temp_y+by-3, temp_x+bx+12+hud_timer*2, temp_y+by+2, c_black, c_black, c_black, c_black, false);
	}
	shader_end();

	if slActive
	{
		shader_start();
		draw_sprite(sprite_get(state_cat==SC_HITSTUN?"SL_hurts":"SL_huds"),0,temp_x+28,temp_y+8);
		shader_end();
	}
	
	draw_sprite(sprite_get("buttons"),rate,temp_x+73,temp_y-46)
}

if ("inPractice" in self && inPractice && "hudtip" in self && hudtip != 0)
{
	var hudtipclamp = clamp(hudtip,0,1);
	draw_set_alpha(hudtipclamp);
	draw_debug_text(temp_x,temp_y - 8 + floor(hudtipclamp*4)*2-8,"Taunt + Down for SL");
	draw_set_alpha(1);
}

//draw_debug_text(temp_x,temp_y - 8,string(command_input));

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
              draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);
