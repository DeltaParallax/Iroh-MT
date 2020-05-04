p_draw(particles)

#define p_draw(list)
///- Draws the particles in the list.
// This function goes into a draw script.
if (ds_list_size(list) > 0) {
    for (var i = 0; i < ds_list_size(list); i++) {
        var ap = list[| i];
        if (ap.shader == true) shader_start();
        draw_sprite_ext(ap.sprite,ap.image,ap.x,ap.y,ap.xscale,1,0,c_red,ap.alpha);
        if (ap.shader == true) shader_end();
    }
}