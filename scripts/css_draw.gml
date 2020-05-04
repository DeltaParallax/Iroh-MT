// Lukaru's css draw, with Muno's base

// Note from Luka: this runs every frame :(
{
	// Fur
	set_color_profile_slot( 0, 0, 200, 200, 240 );
	set_color_profile_slot_range( 0, 27, 24, 29 );
	// Skin
	set_color_profile_slot( 0, 1, 219, 119, 101 );
	// Alt Fur
	set_color_profile_slot( 0, 6, 253, 253, 253 );
	set_color_profile_slot( 1, 0, 128, 171, 244 ); //Fur
	set_color_profile_slot( 1, 1, 219, 119, 101 ); //Skin
	set_color_profile_slot( 1, 6, 253, 253, 253 ); //Alt Fur

	set_color_profile_slot( 2, 0, 239, 109, 86 ); //Fur
	set_color_profile_slot( 2, 1, 230, 157, 145 ); //Skin
	set_color_profile_slot( 2, 6, 253, 253, 253 ); //Alt Fur

	set_color_profile_slot( 3, 0, 51, 85, 68 ); //Fur
	set_color_profile_slot( 3, 1, 51, 85, 68 ); //Skin
	set_color_profile_slot( 3, 6, 51, 85, 68 ); //Alt Fur

	set_color_profile_slot( 4, 0, 104, 101, 133 ); //Fur
	set_color_profile_slot( 4, 1, 104, 101, 133 ); //Skin
	set_color_profile_slot( 4, 6, 104, 101, 133 ); //Alt Fur

	set_color_profile_slot( 5, 0, 86, 58, 88 ); //Fur
	set_color_profile_slot( 5, 1, 86, 58, 88 ); //Skin
	set_color_profile_slot( 5, 6, 86, 58, 88 ); //Alt Fur

	set_color_profile_slot( 6, 0, 104, 73, 139 ); //Fur
	set_color_profile_slot( 6, 1, 104, 73, 139 ); //Skin
	set_color_profile_slot( 6, 6, 104, 73, 139 ); //Alt Fur

	set_color_profile_slot( 7, 0, 173, 179, 81 ); //Fur
	set_color_profile_slot( 7, 1, 173, 179, 81 ); //Skin
	set_color_profile_slot( 7, 6, 173, 179, 81 ); //Alt Fur

	set_color_profile_slot( 8, 0, 168, 64, 147 ); //Fur
	set_color_profile_slot( 8, 1, 168, 64, 147 ); //Skin
	set_color_profile_slot( 8, 6, 168, 64, 147 ); //Alt Fur

	set_color_profile_slot( 9, 0, 98, 90, 139 ); //Fur
	set_color_profile_slot( 9, 1, 219, 119, 101 ); //Skin
	set_color_profile_slot( 9, 6, 232, 232, 236 ); //Alt Fur

	set_color_profile_slot( 10, 0, 119, 136, 187 ); //Fur
	set_color_profile_slot( 10, 1, 219, 119, 101 ); //Skin
	set_color_profile_slot( 10, 6, 253, 253, 253 ); //Alt Fur

	set_color_profile_slot( 11, 0, 106, 99, 118 ); //Fur
	set_color_profile_slot( 11, 1, 166, 150, 177 ); //Skin
	set_color_profile_slot( 11, 6, 204, 194, 209 ); //Alt Fur

	set_color_profile_slot( 12, 0, 140, 114, 175 ); //Fur
	set_color_profile_slot( 12, 1, 166, 150, 177 ); //Skin
	set_color_profile_slot( 12, 6, 228, 224, 233 ); //Alt Fur

	set_color_profile_slot( 13, 0, 0, 0, 0 ); //Fur
	set_color_profile_slot( 13, 1, 0, 0, 0 ); //Skin
	set_color_profile_slot( 13, 6, 0, 0, 0 ); //Alt Fur

	set_color_profile_slot( 14, 0, 0, 0, 0 ); //Fur
	set_color_profile_slot( 14, 1, 0, 0, 0 ); //Skin
	set_color_profile_slot( 14, 6, 0, 0, 0 ); //Alt Fur

	set_color_profile_slot( 15, 0, 0, 0, 0 ); //Fur
	set_color_profile_slot( 15, 1, 0, 0, 0 ); //Skin
	set_color_profile_slot( 15, 6, 0, 0, 0 ); //Alt Fur
}

var temp_x = x + 8;
var temp_y = y + 9;

var red1 = get_color_profile_slot_r(get_player_color( player ), 0);
var green1 = get_color_profile_slot_g(get_player_color( player ), 0);
var blue1 = get_color_profile_slot_b(get_player_color( player ), 0);
var colourrrrr = merge_colour(make_colour_rgb(red1, green1, blue1), c_white, 0.5);

patch_ver = "1.0";
//patch_day = "17";
//patch_month = "MAR";
image_alpha = max(image_alpha-0.02, 0);

var num_alts = 16;
var alt_new = get_player_color(player);
if ((alt_new != 15 && alt_new != image_index - 1) || (alt_new == 15 && (image_index == 15 || image_index == 1))) // image_index is global
	image_alpha = 1.5;
image_index = alt_new;

alt_name[0]  = "Default";
alt_name[1]  = "Never";
alt_name[2]  = "Gonna";
alt_name[3]  = "Give";
alt_name[4]  = "You";
alt_name[5]  = "Up";
alt_name[6]  = "Never";
alt_name[7]  = "Gonna";
alt_name[8]  = "Let";
alt_name[9]  = "You";
alt_name[10] = "Down";
alt_name[11] = "Haha";
alt_name[12] = "Hahaha";
alt_name[13] = "Hahahaha";
alt_name[14] = "idk";
alt_name[15] = "lmao";

draw_set_halign(fa_left);

textDraw(temp_x + 164, temp_y + 26, "fName", colourrrrr, 0, 1000, 1, false, 0.3, "v" + patch_ver);

//textDraw(temp_x + 2, temp_y + 50, "fName", colourrrrr, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
if (image_alpha > 0)
	rectDraw(temp_x, temp_y + 141 - floor((image_alpha>1?1:image_alpha)*3.5)*2, temp_x + 201, temp_y + 142, c_black);

if (image_alpha > 0.5)
	for(i = 0; i < num_alts; ++i)
	{
	    var draw_color = (i == image_index) ? colourrrrr : c_gray;
	    var draw_x = temp_x + 2 + 10 * i;
		rectDraw(draw_x, temp_y + 143 - floor((image_alpha>1?1:image_alpha)*3.5)*2, draw_x + 7, temp_y + 140, draw_color);
	}

draw_set_halign(fa_left);
 
// include alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1) + ": " + alt_name[image_index]);
textDraw(temp_x + 2, temp_y + 125 - floor((image_alpha>1?1:image_alpha)*3.5)*2, "fName", colourrrrr, 0, 1000, 1, true, image_alpha, alt_name[image_index]);
 
// exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1));

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if (argument[7]) // outline. doesn't work
{
    for (i = -1; i < 2; ++i)
	{
        for (j = -1; j < 2; ++j)
		{
			if (argument[8] > 0)
				draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, argument[8]);
        }
    }
}

if (argument[8] > 0)
	draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);