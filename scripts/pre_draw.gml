
p_draw(particles)
#define p_draw(list)
///- Draws the particles in the list.
// This function goes into a draw script.
var red1 = get_color_profile_slot_r(get_player_color( player ), 0);
var green1 = get_color_profile_slot_g(get_player_color( player ), 0);
var blue1 = get_color_profile_slot_b(get_player_color( player ), 0);
var colour1 = make_colour_rgb(red1, green1, blue1);

if (ds_list_size(list) > 0) {
    for (var i = 0; i < ds_list_size(list); i++) {
        var ap = list[| i];
        if (ap.shader == true) shader_start();
        draw_sprite_ext(ap.sprite,ap.image,ap.x,ap.y,ap.xscale,1,0,colour1,ap.alpha);
        if (ap.shader == true) shader_end();
    }
}