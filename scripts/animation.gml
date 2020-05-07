///animation
/*
switch (state){
    case PS_WALK:
	if walk_indicate == -1 or walk_indicate = -.5
	{
		sprite_index = sprite_get("walkstart");
		walk_indicate +=0.5;
	}
	else
	if (walk_indicate == 0 and sprite_index != sprite_get("walk"))
	{
		sprite_index = sprite_get("walk");
	}
    break;

    default:
	if walk_indicate == -1 or walk_indicate == -.5
	{
		exit;
	}
	else
	if walk_indicate == 0 or walk_indicate == 0.5
	{
		walk_indicate +=.5
		sprite_index = sprite_get("walkend");
	}
	else
	if walk_indicate == 1
	{
		walk_indicate = -1
	}
	
	case PS_PRATFALL:
	if (state_timer < 8){
		image_index = floor(state_timer / 2);
		
	}
		else{
			image_index = 2 + (floor(state_timer / 4) % 2)
			
		}
	break;
} //needs to be looked at

*/

if(state == PS_PRATFALL){
	if(image_index >= 3){
		image_index = 3;
	}
}

//Fstrong Charge animation
if(attack == AT_FSTRONG && window == 1 && state == PS_ATTACK_GROUND){
	
	image_index = floor(strong_charge / 6) % 4;
}


//#region SL sprite exchange
if useskins{
    //Ground
    changeAnim(spr_idle, sprite_get("idle"));
    changeAnim(spr_crouch, sprite_get("crouch"));
    changeAnim(spr_walk, sprite_get("walk"));
    changeAnim(spr_walkturn, sprite_get("walkturn"));
    changeAnim(spr_dash, sprite_get("dash"));
    changeAnim(spr_dashstart, sprite_get("dashstart"));
    changeAnim(spr_dashstop, sprite_get("dashstop"));
    changeAnim(spr_dashturn, sprite_get("dashturn"));

    //Air
    changeAnim(spr_jumpstart, sprite_get("jumpstart"));
    changeAnim(spr_jump, sprite_get("jump"));
    changeAnim(spr_doublejump, sprite_get("doublejump"));
    changeAnim(spr_walljump, sprite_get("walljump"));
    changeAnim(spr_pratfall, sprite_get("pratfall"));
    changeAnim(spr_land, sprite_get("land"));
    changeAnim(spr_landinglag, sprite_get("landinglag"));

    //Dodge
    changeAnim(spr_parry, sprite_get("parry"));
    changeAnim(spr_roll_forward, sprite_get("roll_forward"));
    changeAnim(spr_roll_backward, sprite_get("roll_backward"));
    changeAnim(spr_airdodge, sprite_get("airdodge"));
    changeAnim(spr_airdodge_forward, sprite_get("airdodge_forward"));
    changeAnim(spr_airdodge_back, sprite_get("airdodge_back"));
    changeAnim(spr_airdodge_upback, sprite_get("airdodge_upback"));
    changeAnim(spr_airdodge_upforward, sprite_get("airdodge_upforward"));
    changeAnim(spr_airdodge_downback, sprite_get("airdodge_downback"));
    changeAnim(spr_airdodge_downforward, sprite_get("airdodge_downforward"));
    changeAnim(spr_airdodge_waveland, sprite_get("waveland"));
    changeAnim(spr_tech, sprite_get("tech"));

    //Hurt
    changeAnim(spr_hurt, sprite_get("hurt"));
    changeAnim(spr_bighurt, sprite_get("bighurt"));
    changeAnim(spr_hurtground, sprite_get("hurtground"));
    changeAnim(spr_uphurt, sprite_get("uphurt"));
    changeAnim(spr_downhurt, sprite_get("downhurt"));
    changeAnim(spr_bouncehurt, sprite_get("bouncehurt"));
    changeAnim(spr_spinhurt, sprite_get("spinhurt"));

    //Attack
    changeAnim(spr_jab, sprite_get("jab"));
    changeAnim(spr_dattack, sprite_get("dattack"));
    changeAnim(spr_ftilt, sprite_get("ftilt"));
    changeAnim(spr_dtilt, sprite_get("dtilt"));
    changeAnim(spr_utilt, sprite_get("utilt"));
    changeAnim(spr_nair, sprite_get("nair"));
    changeAnim(spr_fair, sprite_get("fair"));
    changeAnim(spr_bair, sprite_get("bair"));
    changeAnim(spr_uair, sprite_get("uair"));
    changeAnim(spr_dair, sprite_get("dair"));
    changeAnim(spr_fstrong, sprite_get("fstrong"));
    changeAnim(spr_ustrong, sprite_get("ustrong"));
    changeAnim(spr_dstrong, sprite_get("dstrong"));
    changeAnim(spr_nspecial, sprite_get("nspecial"));
    changeAnim(spr_fspecial, sprite_get("fspecial"));
    changeAnim(spr_dspecial, sprite_get("dspecial"));
    changeAnim(spr_fspecial_air, sprite_get("fspecial_air"));
    changeAnim(spr_uspecial, sprite_get("uspecial"));
    changeAnim(spr_dspecial, sprite_get("dspecial"));
    changeAnim(spr_taunt, sprite_get("taunt"));
    changeAnim(spr_spark, sprite_get("spark"));
}



//Handle certain looping animations
if (sprite_index == spr_idle){
    var frames = 16;
    var frame_dur = 5;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_walk){
	
    var frames = 8;
    var frame_dur = 4 ;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_dash){
	if(slActive){
		dash_ASP = 3;
	}
	else {
		dash_ASP = 4;
	}
    var frames = 10;
    var frame_dur = dash_ASP;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}



#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}
//#endregion