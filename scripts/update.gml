
//#region Shadow dash
//shadow dash spawn

if (dsActive ==1) dsSpawnTimer+=1; else dsSpawnTimer = 0;

if (state != PS_RESPAWN)
{
	if (dsSpawnTimer == dsMaxSpawnTime)
	{
		dsSpawnTimer=0;
		if (dsMaxShadows != -1)
		{
			if (dsMaxShadows > dsNumShadows)
			{
				dsNumShadows+=1
				var shadow,change;
				change = [1,1];
				if (dsDispChangeWith[0] == 1) change[0] = image_xscale;
				if (dsDispChangeWith[1] == 1) change[1] = image_yscale;
				//note from supersonic: always floor your x and y values on instance_create, create_hitbox, and create_deathbox.
				shadow = instance_create(floor(x+(dsStartDisp[0])*change[0]),floor(y+(dsStartDisp[1])*change[1]),"obj_article1");
				shadow.dsEndDisp = dsEndDisp;
				shadow.dsLifetime = dsLifetime;
				shadow.dsStartScale = dsStartScale;
				shadow.dsEndScale = dsEndScale;
				shadow.dsSnapPos = dsSnapPos;
				shadow.spr_dir = image_xscale;
				shadow.sprite_index = sprite_index;
				shadow.image_index = image_index;
				shadow.image_speed = 0;
				shadow.image_alpha = dsStartAlpha;
				shadow.image_xscale=dsStartScale[0];
				shadow.image_yscale = dsStartScale[1];
			}
		}
		else
		{
			dsNumShadows+=1
			var shadow,change;
			change = [1,1];
			if (dsDispChangeWith[0] == 1) change[0] = image_xscale;
			if (dsDispChangeWith[1] == 1) change[1] = image_yscale;
			shadow = instance_create(floor(x+(dsStartDisp[0])*change[0]),floor(y+(dsStartDisp[1])*change[1]),"obj_article1");
			shadow.dsEndDisp = dsEndDisp;
			shadow.dsLifetime = dsLifetime;
			shadow.dsStartScale = dsStartScale;
			shadow.dsEndScale = dsEndScale;
			shadow.dsSnapPos = dsSnapPos;
			shadow.spr_dir = image_xscale;
			shadow.sprite_index = sprite_index;
			shadow.image_index = image_index;
			shadow.image_speed = 0;
			shadow.image_alpha = dsStartAlpha;
			shadow.image_xscale=dsStartScale[0];
			shadow.image_yscale = dsStartScale[1];
		}
	}
}
else
{
	dsSpawnTimer=0;
}

//dash shadow activating
if (dsNoDiscrim == 0)
{
	dsActive = 0;
	for (var i = 0; i <array_length_1d(dsSpawnDuring); i++)
	{
		if (state == dsSpawnDuring[i])
		{
			dsActive = 1;
		}
	}
	for (var j = 0; j <array_length_1d(dsSpawnAttack); j++)
	{
		if (attack ==dsSpawnAttack[j] && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
		{
			dsActive = 1;
		}
	}
}
else
{
	dsActive = 1;
}

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
if(can_US = false){
    move_cooldown[AT_USPECIAL] = 50;
}
if(can_US = true){
	move_cooldown[AT_USPECIAL] = 0;
}

if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
  can_US = true;
}

//#endregion



//#region Sanguine Lightning
if (slTimer >= slTimerLimit and !slActive)
{
	slActive = true
	SL_mode();
	DSP_dam = 0;
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
		slTimer-=1
		slHurtTimer-=1
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
		DSP_dam += slHurtAmount;
	}
}
else
{
	slHurtTimer = 0
	slDamageMult = slNormalDamage
	slKBMult = slNormalKB
}

dsActive = slActive

//#endregion


//#region SL sparks
if(slActive){
	for(var n = 0; n <= 1; n++)
	if(!hitpause){
		if(slTimer % 30 = n){
			for(var m = 1; m <= 4; m++){
				var xran = random_func(m, 90, true)
				var yran = random_func_2(m, 90, true)
				instance_create(x + (xran - 45) * spr_dir, y + yran - 80, "obj_article2")
			}
		}
	}
	if((hsp != 0 || vsp != 0) && !hitpause){
		for(var n = 0; n <= 2; n++)
		if(slTimer % 6 = n){
			for(var m = 1; m <= 4; m++){
				var xran = random_func(m, 90, true)
				var yran = random_func_2(m, 90, true)
				instance_create(x + (xran - 45) * spr_dir, y + yran - 80, "obj_article2")
			}
		}
	}
}

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
    for(var k = 1; k <= 12; k++){
    	set_hitbox_value(AT_FSTRONG, k, HG_BASE_KNOCKBACK, 8.5);
    	set_hitbox_value(AT_FSTRONG, k, HG_KNOCKBACK_SCALING, 0.70);
    	set_hitbox_value(AT_FSTRONG, k, HG_ANGLE, 40);
    	set_hitbox_value(AT_FSTRONG, k, HG_BASE_HITPAUSE, 18);
    	set_hitbox_value(AT_FSTRONG, k, HG_HITPAUSE_SCALING, 1);
    	set_hitbox_value(AT_FSTRONG, k, HG_EXTRA_HITPAUSE, 0);
    	set_hitbox_value(AT_FSTRONG, k, HG_DAMAGE, 10);
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
    for(var k = 1; k <= 12; k++){
    	reset_hitbox_value(AT_FSTRONG, k, HG_BASE_KNOCKBACK);
    	reset_hitbox_value(AT_FSTRONG, k, HG_KNOCKBACK_SCALING);
    	reset_hitbox_value(AT_FSTRONG, k, HG_ANGLE);
    	reset_hitbox_value(AT_FSTRONG, k, HG_BASE_HITPAUSE);
    	reset_hitbox_value(AT_FSTRONG, k, HG_HITPAUSE_SCALING);
    	reset_hitbox_value(AT_FSTRONG, k, HG_EXTRA_HITPAUSE);
    	reset_hitbox_value(AT_FSTRONG, k, HG_DAMAGE);
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
    spr_spark = sprite_get("SL_spark")
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
    spr_spark = sprite_get("spark")
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
	air_accel = 0.6
}
else{
	dash_speed = 6.8;
	initial_dash_speed = 7.3;
	max_jump_hsp = 5.8
	air_accel = 0.4
}


//#endregion


