
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

//#region Sanguine Lightning
if (slTimer >= slTimerLimit and !slActive)
{
	slActive = true
	SL_attacks();
	slTimer = slTimerLimit
	slHurtTimer = slMaxHurtTime;
}

if(slTimer < 0){
	slHurtTimer = 0
	slDamageMult = slNormalDamage
	slKBMult = slNormalKB
	
}

if slActive
{
	slTimer-=1
	slHurtTimer-=1
	
	slDamageMult = slActiveDamage
	slKBMult = slActiveKB
	
	if slTimer <= 0 
	{
		slTimer = 0;
		slActive = false
		SL_attacks();
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

dsActive = slActive

//#endregion


#define SL_attacks
//#region Sangiune Lightning Alts
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
    for(var i = 1; i <= 12; i++){
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
    for(var i = 1; i <= 12; i++){
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