
//#region Shadow dash
//shadow dash spawn
if slActive createParticle(particles, 1, 0, 0, sprite_index, image_index, x, y, 0, 0, 0, 0, 0, 1,-0.2,10)

p_process(particles)
//#endregion

//#region Ustrong Lock
with(oPlayer){
	if(id != other.id){
		if(throwlock < 45 && throwid == other.id){
			hsp = 0;
			throwlock++
		}
	}
}

//#endregion


//#region Uspecial SL cooldown
move_cooldown[AT_USPECIAL] = (can_US?0:50);

if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
  can_US = true;
}

//#endregion



//#region Sanguine Lightning
if (slTimer >= slTimerLimit && !slActive)
{
	slActive = true
	SL_mode();
	slTimer = slTimerLimit
	slHurtTimer = slMaxHurtTime;
	with(oPlayer){
		hitpause = true;
		hitstop = 45;
	}
	SL_trans_timer = 0;
}
	SL_trans_timer += 0.32;

if(slTimer < 0){
	slHurtTimer = 0
	slDamageMult = slNormalDamage
	slKBMult = slNormalKB
	
}

if slActive
{
	if(!hitpause){
		--slTimer;
		--slHurtTimer;
	}
	
	slDamageMult = slActiveDamage
	slKBMult = slActiveKB
	
	if slTimer <= 0 
	{
		slTimer = 0;
		slActive = false
		SL_mode();
	}
	
	if slHurtTimer <= 0
	{
		slHurtTimer = slMaxHurtTime;
		take_damage(player,-1,slHurtAmount)
	}
}
else
{
	slHurtTimer = 0
	slDamageMult = slNormalDamage
	slKBMult = slNormalKB
}



//#endregion


//#region SL sparks
/*if(slActive && slTimer == 600 ){
	instance_create(x, y - 40, "obj_article2");
	spark_state = 1;
}*/

SL_fizzle_timer += 0.2;


//#endregion

#define SL_mode
//#region Sangiune Lightning Strong Hitboxes
if(slActive){
    //Ustrong Kill Version
    set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 15);
    set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.8);
    set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.75);
    
    //Dstrong Kill Version
    set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 11);
    set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
    set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
    set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
    set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
    
    //Fstrong Kill Version
    for(var i = 1; i <= 12; ++i){
    	set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 8.5);
    	set_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING, 0.70);
    	set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, 40);
    	set_hitbox_value(AT_FSTRONG, i, HG_BASE_HITPAUSE, 18);
    	set_hitbox_value(AT_FSTRONG, i, HG_HITPAUSE_SCALING, 1);
    	set_hitbox_value(AT_FSTRONG, i, HG_EXTRA_HITPAUSE, 0);
    	set_hitbox_value(AT_FSTRONG, i, HG_DAMAGE, 10);
    }
    
    
}
else{
    //Ustrong reset
    reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
    reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER);
    
    //Dstrong reset
    reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING);
    reset_hitbox_value(AT_DSTRONG, 2, HG_ANGLE);
    
    //Fstrong reset
    for(var i = 1; i <= 12; ++i){
    	reset_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK);
    	reset_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING);
    	reset_hitbox_value(AT_FSTRONG, i, HG_ANGLE);
    	reset_hitbox_value(AT_FSTRONG, i, HG_BASE_HITPAUSE);
    	reset_hitbox_value(AT_FSTRONG, i, HG_HITPAUSE_SCALING);
    	reset_hitbox_value(AT_FSTRONG, i, HG_EXTRA_HITPAUSE);
    	reset_hitbox_value(AT_FSTRONG, i, HG_DAMAGE);
    }
}

//#endregion

//#region Sanguine Lightning Alt attacks

if(slActive){
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4)	
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4)
	
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 3)
	set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6)
	
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1)
	
	set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 18)
	
	set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 3)
	set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 14)
	
	set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4)
	set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4)
	set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 3)
	
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 11)
	set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 11)
	
	set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 14)
	set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 7)
	
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 4)
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 1)
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8)
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.4)
	
	set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6)
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6)
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6)
	
	
}
else{
	reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH)
	
	reset_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH)
	
	reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE)
	
	reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)
	
	reset_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED)
	
	reset_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH)
	reset_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH)
	
	reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE)
	reset_hitbox_value(AT_UTILT, 10, HG_DAMAGE)
	
	reset_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED)
	reset_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH)
	
	reset_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH)
	reset_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH)
	
	reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE)
	reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING)
	
	reset_hitbox_value(AT_JAB, 3, HG_DAMAGE)
	reset_hitbox_value(AT_JAB, 2, HG_DAMAGE)
	reset_hitbox_value(AT_JAB, 1, HG_DAMAGE)
	
	
}

//#endregion


//#region Sanguine Lightning Sprites

if slActive {
    spr_idle = sprite_get("SL_idle");
    spr_taunt = sprite_get("SL_taunt");
    spr_airdodge = sprite_get("SL_airdodge")
    spr_airdodge_upforward = sprite_get("SL_airdodge_upforward")
    spr_airdodge_upback = sprite_get("SL_airdodge_upback")
    spr_airdodge_forward = sprite_get("SL_airdodge_forward")
    spr_airdodge_back = sprite_get("SL_airdodge_back")
    spr_airdodge_downforward = sprite_get("SL_airdodge_downforward")
    spr_airdodge_downback = sprite_get("SL_airdodge_dowback")
    spr_bair = sprite_get("SL_bair")
    spr_crouch = sprite_get("SL_crouch")
    spr_dair = sprite_get("SL_dair")
    spr_dash = sprite_get("SL_dash")
    spr_dashstart = sprite_get("SL_dashstart")
    spr_dashstop = sprite_get("SL_dashstop")
    spr_dashturn = sprite_get("SL_dashturn")
    spr_dattack = sprite_get("SL_dattack")
    spr_doublejump = sprite_get("SL_doublejump")
    spr_dstrong = sprite_get("SL_dstrong")
    spr_dtilt = sprite_get("SL_dtilt")
    spr_fair = sprite_get("SL_fair")
    spr_fspecial = sprite_get("SL_fspecial")
    spr_fspecial_air = sprite_get("SL_fspecial_air")
    spr_fstrong = sprite_get("SL_fstrong")
    spr_ftilt = sprite_get("SL_ftilt")
    spr_roll_forward = sprite_get("SL_roll_forward")
    spr_roll_backward = sprite_get("SL_roll_backward")
    spr_hurt = sprite_get("SL_hurt")
    spr_jab = sprite_get("SL_jab")
    spr_jumpstart = sprite_get("SL_jumpstart")
    spr_jump = sprite_get("SL_jump")
    spr_land = sprite_get("SL_land")
    spr_landinglag = sprite_get("SL_landinglag")
    spr_nair = sprite_get("SL_nair")
    spr_nspecial = sprite_get("SL_nspecial")
    spr_parry = sprite_get("SL_parry")
    spr_pratfall = sprite_get("SL_pratfall")
    spr_sparks = sprite_get("SL_sparks")
    spr_tech = sprite_get("SL_tech")
    spr_uair = sprite_get("SL_uair")
    spr_uphurt = sprite_get("SL_uphurt")
    spr_uspecial = sprite_get("SL_uspecial")
    spr_ustrong = sprite_get("SL_ustrong")
    spr_utilt = sprite_get("SL_utilt")
    spr_walk = sprite_get("SL_walk")
    spr_walkturn = sprite_get("SL_walk")
    spr_walkstart = sprite_get("SL_walkstart")
    spr_walkstop = sprite_get("SL_walkstop")
    spr_walljump = sprite_get("SL_walljump")
    spr_airdodge_waveland = sprite_get("SL_waveland")
    useskins = true;
}
else{
    spr_idle = sprite_get("idle");
    spr_taunt = sprite_get("taunt");
    spr_airdodge = sprite_get("airdodge")
    spr_airdodge_upforward = sprite_get("airdodge_upforward")
    spr_airdodge_upback = sprite_get("airdodge_upback")
    spr_airdodge_forward = sprite_get("airdodge_forward")
    spr_airdodge_back = sprite_get("airdodge_back")
    spr_airdodge_downforward = sprite_get("downforward")
    spr_airdodge_downback = sprite_get("airdodge_downback")
    spr_bair = sprite_get("bair")
    spr_crouch = sprite_get("crouch")
    spr_dair = sprite_get("dair")
    spr_dash = sprite_get("dash")
    spr_dashstart = sprite_get("dashstart")
    spr_dashstop = sprite_get("dashstop")
    spr_dashturn = sprite_get("dashturn")
    spr_dattack = sprite_get("dattack")
    spr_doublejump = sprite_get("doublejump")
    spr_dstrong = sprite_get("dstrong")
    spr_dtilt = sprite_get("dtilt")
    spr_fair = sprite_get("fair")
    spr_fspecial = sprite_get("fspecial")
    spr_fspeial_air = sprite_get("fspecial_air")
    spr_fstrong = sprite_get("fstrong")
    spr_ftilt = sprite_get("ftilt")
    spr_roll_forward = sprite_get("roll_forward")
    spr_roll_backward = sprite_get("roll_backward")
    spr_hurt = sprite_get("hurt")
    spr_jab = sprite_get("jab")
    spr_jumpstart = sprite_get("jumpstart")
    spr_jump = sprite_get("jump")
    spr_land = sprite_get("land")
    spr_landinglag = sprite_get("landinglag")
    spr_nair = sprite_get("nair")
    spr_nspecial = sprite_get("nspecial")
    spr_parry = sprite_get("parry")
    spr_pratfall = sprite_get("pratfall")
    spr_sparks = sprite_get("sparks")
    spr_tech = sprite_get("tech")
    spr_uair = sprite_get("uair")
    spr_uphurt = sprite_get("uphurt")
    spr_uspecial = sprite_get("uspecial")
    spr_ustrong = sprite_get("ustrong")
    spr_utilt = sprite_get("utilt")
    spr_walk = sprite_get("walk")
    spr_walkturn = sprite_get("walkturn")
    spr_walkstart = sprite_get("walkstart")
    spr_walkstop = sprite_get("walkstop")
    spr_walljump = sprite_get("walljump")
    spr_airdodge_waveland = sprite_get("waveland")
    useskins = false;
}

//#endregion


//#region Sanguine Lightning movement buff

if(slActive){
	dash_speed = 8.6;
	initial_dash_speed = 9;
	max_jump_hsp = 8;
	air_accel = 0.6;
}
else{
	dash_speed = 6.8;
	initial_dash_speed = 7.3;
	max_jump_hsp = 5.8;
	air_accel = 0.4;
}


//#endregion

//#region Sanguine Lightning Colour Palette

// note from Luka: this isnt synced with the transformation animation
// another note from Luka: the values here are from colors.gml
// Bugs found so far:	transform and then quit to css (css will have wrong colours)
//						article 1 doesn't use alt colours
//						player icon (beside the % HUD) will not change to SL sprite and colours
if(slActive){
	// Fur
	set_color_profile_slot( 0, 0, 173, 67, 100 );
	set_color_profile_slot_range( 0, 21, 4, 29 );
	
	// Skin
	set_color_profile_slot( 0, 1, 221, 45, 80 );
	
	// Alt Fur
	set_color_profile_slot( 0, 6, 252, 252, 211 );
	
	switch (get_player_color(player))
	{
	case 1:
		set_color_profile_slot( 1, 0, 177, 94, 189 ); //Fur
		set_color_profile_slot( 1, 1, 243, 58, 211 ); //Skin
		set_color_profile_slot( 1, 6, 252, 211, 251 ); //Alt Fur
	break;
	case 2:
		set_color_profile_slot( 2, 0, 209, 186, 194 ); //Fur
		set_color_profile_slot( 2, 1, 221, 45, 80 ); //Skin
		set_color_profile_slot( 2, 6, 240, 175, 172 ); //Alt Fur
	break;
	case 3:
		set_color_profile_slot( 3, 0, 51, 85, 68 ); //Fur
		set_color_profile_slot( 3, 1, 51, 85, 68 ); //Skin
		set_color_profile_slot( 3, 6, 51, 85, 68 ); //Alt Fur
	break;
	case 4:
		set_color_profile_slot( 4, 0, 104, 101, 133 ); //Fur
		set_color_profile_slot( 4, 1, 104, 101, 133 ); //Skin
		set_color_profile_slot( 4, 6, 104, 101, 133 ); //Alt Fur
	break;
	case 5:
		set_color_profile_slot( 5, 0, 86, 58, 88 ); //Fur
		set_color_profile_slot( 5, 1, 86, 58, 88 ); //Skin
		set_color_profile_slot( 5, 6, 86, 58, 88 ); //Alt Fur
	break;
	case 6:
		set_color_profile_slot( 6, 0, 104, 73, 139 ); //Fur
		set_color_profile_slot( 6, 1, 104, 73, 139 ); //Skin
		set_color_profile_slot( 6, 6, 104, 73, 139 ); //Alt Fur
	break;
	case 7:
		set_color_profile_slot( 7, 0, 173, 179, 81 ); //Fur
		set_color_profile_slot( 7, 1, 173, 179, 81 ); //Skin
		set_color_profile_slot( 7, 6, 173, 179, 81 ); //Alt Fur
	break;
	case 8:
		set_color_profile_slot( 8, 0, 168, 64, 147 ); //Fur
		set_color_profile_slot( 8, 1, 168, 64, 147 ); //Skin
		set_color_profile_slot( 8, 6, 168, 64, 147 ); //Alt Fur
	break;
	case 9:
		set_color_profile_slot( 9, 0, 80, 129, 165 ); //Fur
		set_color_profile_slot( 9, 1, 0, 225, 191 ); //Skin
		set_color_profile_slot( 9, 6, 143, 181, 211 ); //Alt Fur
	break;
	case 10:
		set_color_profile_slot( 10, 0, 173, 66, 99 ); //Fur
		set_color_profile_slot( 10, 1, 206, 0, 0 ); //Skin
		set_color_profile_slot( 10, 6, 222, 206, 156 ); //Alt Fur
	break;
	case 11:
		set_color_profile_slot( 11, 0, 117, 162, 210 ); //Fur
		set_color_profile_slot( 11, 1, 221, 45, 80 ); //Skin
		set_color_profile_slot( 11, 6, 236, 247, 255 ); //Alt Fur
	break;
	case 12:
		set_color_profile_slot( 12, 0, 173, 67, 100 ); //Fur
		set_color_profile_slot( 12, 1, 221, 45, 80 ); //Skin
		set_color_profile_slot( 12, 6, 252, 252, 211 ); //Alt Fur
	break;
	case 13:
		set_color_profile_slot( 13, 0, 0, 0, 0 ); //Fur
		set_color_profile_slot( 13, 1, 0, 0, 0 ); //Skin
		set_color_profile_slot( 13, 6, 0, 0, 0 ); //Alt Fur
	break;
	case 14:
		set_color_profile_slot( 14, 0, 0, 0, 0 ); //Fur
		set_color_profile_slot( 14, 1, 0, 0, 0 ); //Skin
		set_color_profile_slot( 14, 6, 0, 0, 0 ); //Alt Fur
	break;
	case 15:
		set_color_profile_slot( 15, 0, 0, 0, 0 ); //Fur
		set_color_profile_slot( 15, 1, 0, 0, 0 ); //Skin
		set_color_profile_slot( 15, 6, 0, 0, 0 ); //Alt Fur
	break;
	default:
	break;
	}
}
else{
	// Fur
	set_color_profile_slot( 0, 0, 200, 200, 240 );
	set_color_profile_slot_range( 0, 27, 24, 29 );
	
	// Skin
	set_color_profile_slot( 0, 1, 219, 119, 101 );
	
	// Alt Fur
	set_color_profile_slot( 0, 6, 253, 253, 253 );
	
	switch (get_player_color(player))
	{
	case 1:
		set_color_profile_slot( 1, 0, 128, 171, 244 ); //Fur
		set_color_profile_slot( 1, 1, 219, 119, 101 ); //Skin
		set_color_profile_slot( 1, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 2:
		set_color_profile_slot( 2, 0, 239, 109, 86 ); //Fur
		set_color_profile_slot( 2, 1, 230, 157, 145 ); //Skin
		set_color_profile_slot( 2, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 3:
		set_color_profile_slot( 3, 0, 51, 85, 68 ); //Fur
		set_color_profile_slot( 3, 1, 51, 85, 68 ); //Skin
		set_color_profile_slot( 3, 6, 51, 85, 68 ); //Alt Fur
	break;
	case 4:
		set_color_profile_slot( 4, 0, 104, 101, 133 ); //Fur
		set_color_profile_slot( 4, 1, 104, 101, 133 ); //Skin
		set_color_profile_slot( 4, 6, 104, 101, 133 ); //Alt Fur
	break;
	case 5:
		set_color_profile_slot( 5, 0, 86, 58, 88 ); //Fur
		set_color_profile_slot( 5, 1, 86, 58, 88 ); //Skin
		set_color_profile_slot( 5, 6, 86, 58, 88 ); //Alt Fur
	break;
	case 6:
		set_color_profile_slot( 6, 0, 104, 73, 139 ); //Fur
		set_color_profile_slot( 6, 1, 104, 73, 139 ); //Skin
		set_color_profile_slot( 6, 6, 104, 73, 139 ); //Alt Fur
	break;
	case 7:
		set_color_profile_slot( 7, 0, 173, 179, 81 ); //Fur
		set_color_profile_slot( 7, 1, 173, 179, 81 ); //Skin
		set_color_profile_slot( 7, 6, 173, 179, 81 ); //Alt Fur
	break;
	case 8:
		set_color_profile_slot( 8, 0, 168, 64, 147 ); //Fur
		set_color_profile_slot( 8, 1, 168, 64, 147 ); //Skin
		set_color_profile_slot( 8, 6, 168, 64, 147 ); //Alt Fur
	break;
	case 9:
		set_color_profile_slot( 9, 0, 98, 90, 139 ); //Fur
		set_color_profile_slot( 9, 1, 219, 119, 101 ); //Skin
		set_color_profile_slot( 9, 6, 232, 232, 236 ); //Alt Fur
	break;
	case 10:
		set_color_profile_slot( 10, 0, 119, 136, 187 ); //Fur
		set_color_profile_slot( 10, 1, 219, 119, 101 ); //Skin
		set_color_profile_slot( 10, 6, 253, 253, 253 ); //Alt Fur
	break;
	case 11:
		set_color_profile_slot( 11, 0, 106, 99, 118 ); //Fur
		set_color_profile_slot( 11, 1, 166, 150, 177 ); //Skin
		set_color_profile_slot( 11, 6, 204, 194, 209 ); //Alt Fur
	break;
	case 12:
		set_color_profile_slot( 12, 0, 140, 114, 175 ); //Fur
		set_color_profile_slot( 12, 1, 166, 150, 177 ); //Skin
		set_color_profile_slot( 12, 6, 228, 224, 233 ); //Alt Fur
	break;
	case 13:
		set_color_profile_slot( 13, 0, 0, 0, 0 ); //Fur
		set_color_profile_slot( 13, 1, 0, 0, 0 ); //Skin
		set_color_profile_slot( 13, 6, 0, 0, 0 ); //Alt Fur
	break;
	case 14:
		set_color_profile_slot( 14, 0, 0, 0, 0 ); //Fur
		set_color_profile_slot( 14, 1, 0, 0, 0 ); //Skin
		set_color_profile_slot( 14, 6, 0, 0, 0 ); //Alt Fur
	break;
	case 15:
		set_color_profile_slot( 15, 0, 0, 0, 0 ); //Fur
		set_color_profile_slot( 15, 1, 0, 0, 0 ); //Skin
		set_color_profile_slot( 15, 6, 0, 0, 0 ); //Alt Fur
	break;
	default:
	break;
	}
}
#endregion

#define p_process(list)
///- process the particles in the list provided
// This function goes in update.gml.
//process particles. everything here should be self explanatory.
if (ds_list_size(list) <= 0) return false;
var i = 0;
repeat (ds_list_size(list)) {
    var ap = list[| i];
    if (ap.sprite != -1) {
        ap.alpha += ap.alpha_rate;
        ap.image += ap.frame_rate;
        ap.timer++;
        ap.x += ap.hsp;
        ap.y += ap.vsp;
        ap.hsp += ap.hAccel;
        ap.vsp += ap.vAccel;
        if ((ap.alpha < 0 && sign(ap.alpha_rate) == -1) || ap.timer > ap.lifetime || (ap.frame_end && ap.image == sprite_get_number(ap.sprite))) {
            ds_list_delete(list,i);
            continue;
        }
        i++;
    }
}

#define createParticle
///createParticle(list, amt, xvar, yvar, sprite, image, x, y, hsp, vsp, ?frame_rate, ?hAccel, ?vAccel, ?alpha, ?alpha_rate, ?lifetime, ?uses_shader, ?stop_at_last_frame)
///- create a number (amt) of particles
// This function goes wherever you want to create particles from.
var ind = 0;
var list = argument[0];
var amt = argument[1]; //Amount of particles
var xvar = argument[2]; //X Variation
var yvar = argument[3];	//Y Variation
var sprite = argument[4], image = argument[5],
	_x = argument[6], _y = argument[7],
	_hsp = argument[8], _vsp = argument[9];
var frame_rate = argument_count >= 11 ? argument[10] : 0; //animation framerate
var hAccel = argument_count >= 12 ? argument[11] : 0; //horizontal acceleration
var vAccel = argument_count >= 13 ? argument[12] : 0; //vertical acceleration
var alpha = argument_count >= 14 ? argument[13] : 1; //the starting alpha.
var alpha_rate = argument_count >= 15 ? argument[14] : -0.1; //the rate the alpha changes at.
var lifetime = argument_count >= 16 ? argument[15] : 30; //particle lifetime.
var uses_shader = argument_count >= 17 ? argument[16] : true; //whether the particle should recolor with the character
var stop_at_last_frame = argument_count >= 18 ? argument[17] : false; //if this is true, instead of looping the particle will despawn after hitting the final frame.
//actual function
if argument_count <= 8 return false; //if it returns false you didn't give it enough arguments so it can't make a particle
repeat(amt) {
    var newParticle = {
        sprite: sprite,     //sprite
        image: image,
        frame_rate: frame_rate,
        x: _x+random_func((ind++)%25,xvar,true)-floor(xvar/2),      //x
        y: _y+random_func((ind++)%25,yvar,true)-floor(yvar/2),      //y
        hsp: _hsp,      //hsp
        vsp: _vsp,      //vsp
        hAccel: hAccel,      //hAccel
        vAccel: vAccel,      //vAccel
        alpha: alpha,      //alpha
        alpha_rate: alpha_rate,      //alpha rate
        timer: 0,      //particle timer
        lifetime: lifetime,       //particle lifetime
        shader: uses_shader,
        frame_end: stop_at_last_frame,
        xscale: image_xscale
        };
    ds_list_add(list,newParticle);
}