
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
	
	if slTimer == 0 
	{
		slActive = false
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
