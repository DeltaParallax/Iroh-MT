//early access alt
if (get_player_color(player) == 7)
{
    for(var i = 0; i < 8; ++i)
	{
        set_character_color_shading(i, 0);
    }
    outline_color = [ 35, 67, 49 ];
}
//#region Sanguine Lightning Colour Palette

// note from Luka: this isnt synced with the transformation animation
// another note from Luka: the values here are from colors.gml
// Bugs found so far:	transform and then quit to css (css will have wrong colours)
//						article 1 doesn't use alt colours
//						player icon (beside the % HUD) will not change to SL sprite and colours
if("slActive" in self && slActive){
	// Skin
	set_color_profile_slot( 0, 1, 221, 45, 80 );
	
	// Alt Fur
	set_color_profile_slot( 0, 6, 252, 252, 211 );
	
	switch (get_player_color(player))
	{
	case 1:
		set_color_profile_slot( 1, 1, 243, 58, 211 ); //Skin
		set_color_profile_slot( 1, 6, 252, 211, 251 ); //Alt Fur
	break;
	case 2:
		set_color_profile_slot( 2, 1, 221, 45, 80 ); //Skin
		set_color_profile_slot( 2, 6, 240, 175, 172 ); //Alt Fur
	break;
	case 3:
		set_color_profile_slot( 3, 1, 204, 254, 54 ); //Skin
		set_color_profile_slot( 3, 6, 197, 224, 167 ); //Alt Fur
	break;
	case 4:
		set_color_profile_slot( 4, 1, 247, 233, 254 ); //Skin
		set_color_profile_slot( 4, 6, 179, 158, 180 ); //Alt Fur
	break;
	case 5:
		set_color_profile_slot( 5, 1, 221, 45, 80 ); //Skin
		set_color_profile_slot( 5, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 6:
		set_color_profile_slot( 6, 1, 238, 23, 136 ); //Skin
		set_color_profile_slot( 6, 6, 125, 103, 173 ); //Alt Fur
	break;
	case 7:
		set_color_profile_slot( 7, 1, 167, 186, 74 ); //Skin
		set_color_profile_slot( 7, 6, 211, 226, 154 ); //Alt Fur
	break;
	case 8:
		set_color_profile_slot( 8, 1, 221, 45, 80 ); //Skin
		set_color_profile_slot( 8, 6, 252, 252, 211 ); //Alt Fur
	break;
	case 9:
		set_color_profile_slot( 9, 1, 0, 225, 191 ); //Skin
		set_color_profile_slot( 9, 6, 143, 181, 211 ); //Alt Fur
	break;
	case 10:
		set_color_profile_slot( 10, 1, 206, 0, 0 ); //Skin
		set_color_profile_slot( 10, 6, 222, 206, 156 ); //Alt Fur
	break;
	case 11:
		set_color_profile_slot( 11, 1, 221, 45, 80 ); //Skin
		set_color_profile_slot( 11, 6, 236, 247, 255 ); //Alt Fur
	break;
	case 12:
		set_color_profile_slot( 12, 1, 74, 228, 255 ); //Skin
		set_color_profile_slot( 12, 6, 252, 252, 211 ); //Alt Fur
	break;
	case 13:
		set_color_profile_slot( 13, 1, 254, 225, 69 ); //Skin
		set_color_profile_slot( 13, 6, 242, 250, 171 ); //Alt Fur
	break;
	case 14:
		set_color_profile_slot( 14, 1, 254, 137, 157 ); //Skin
		set_color_profile_slot( 14, 6, 252, 252, 211 ); //Alt Fur
	break;
	case 15:
		set_color_profile_slot( 15, 1, 255, 255, 255 ); //Skin
		set_color_profile_slot( 15, 6, 243, 84, 116 ); //Alt Fur
	break;
	default:
	break;
	}
}
else{	
	// Skin
	set_color_profile_slot( 0, 1, 219, 119, 101 );
	
	// Alt Fur
	set_color_profile_slot( 0, 6, 253, 253, 253 );
	
	switch (get_player_color(player))
	{
	case 1:
		set_color_profile_slot( 1, 1, 219, 119, 101 ); //Skin
		set_color_profile_slot( 1, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 2:
		set_color_profile_slot( 2, 1, 230, 157, 145 ); //Skin
		set_color_profile_slot( 2, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 3:
		set_color_profile_slot( 3, 1, 221, 218, 100 ); //Skin
		set_color_profile_slot( 3, 6, 235, 245, 197 ); //Alt Fur
	break;
	case 4:
		set_color_profile_slot( 4, 1, 221, 45, 80 ); //Skin
		set_color_profile_slot( 4, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 5:
		set_color_profile_slot( 5, 1, 140, 77, 149 ); //Skin
		set_color_profile_slot( 5, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 6:
		set_color_profile_slot( 6, 1, 245, 103, 221 ); //Skin
		set_color_profile_slot( 6, 6, 245, 175, 226 ); //Alt Fur
	break;
	case 7:
		set_color_profile_slot( 7, 1, 83, 122, 62 ); //Skin
		set_color_profile_slot( 7, 6, 211, 226, 154 ); //Alt Fur
	break;
	case 8:
		set_color_profile_slot( 8, 1, 166, 150, 177 ); //Skin
		set_color_profile_slot( 8, 6, 228, 224, 233 ); //Alt Fur
	break;
	case 9:
		set_color_profile_slot( 9, 1, 219, 119, 101 ); //Skin
		set_color_profile_slot( 9, 6, 232, 232, 236 ); //Alt Fur
	break;
	case 10:
		set_color_profile_slot( 10, 1, 219, 119, 101 ); //Skin
		set_color_profile_slot( 10, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 11:
		set_color_profile_slot( 11, 1, 166, 150, 177 ); //Skin
		set_color_profile_slot( 11, 6, 204, 194, 209 ); //Alt Fur
	break;
	case 12:
		set_color_profile_slot( 12, 1, 176, 130, 204 ); //Skin
		set_color_profile_slot( 12, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 13:
		set_color_profile_slot( 13, 1, 242, 250, 171 ); //Skin
		set_color_profile_slot( 13, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 14:
		set_color_profile_slot( 14, 1, 222, 204, 143 ); //Skin
		set_color_profile_slot( 14, 6, 245, 237, 205 ); //Alt Fur
	break;
	case 15:
		set_color_profile_slot( 15, 1, 174, 142, 172 ); //Skin
		set_color_profile_slot( 15, 6, 253, 253, 253 ); //Alt Fur
	break;
	default:
	break;
	}
}