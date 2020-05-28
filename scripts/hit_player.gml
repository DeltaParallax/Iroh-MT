//#region Specials

    //#region Fspecial
if ( my_hitboxID.attack == AT_FSPECIAL) {
	if(my_hitboxID.hbox_num == 1 ||  my_hitboxID.hbox_num == 2){
		hit_player_obj.should_make_shockwave = false;
    	if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false){
    	    fspec_airgrab = true;
    	    fspec_id = hit_player_obj;
    	}
    	if(my_hitboxID.hbox_num == 2){
    	    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    	    pop.depth = -10;
    	}
    }
    if(my_hitboxID.hbox_num == 2){
    	FtoU_timer = 0;
    }
}
    //#endregion
    
    //#region Uspecial
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
    my_hitboxID.player_id.USPpow = true;
    var pop = spawn_hit_fx( hit_player_obj.x + 10*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );

    pop.depth = -10;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;
}

if (my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 2)){
    hit_player_obj.should_make_shockwave = false;
}
    

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 3){
    my_hitboxID.player_id.USPpow = false;
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;
    
}

if ( my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 ||  my_hitboxID.hbox_num == 2)) {
    hit_player_obj.should_make_shockwave = false;
    if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false){
        uspec_grab = true;
        uspec_id = hit_player_obj;
    }
    
}


    //#endregion
    
    //#region Dspecial_2
if ( my_hitboxID.attack == AT_DSPECIAL_2 || my_hitboxID.attack == AT_DSPECIAL_AIR) {
        if(my_hitboxID.hbox_num != 5){
            var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, SL_lightningpop );
            pop.depth = -10;
        }
}
    //#endregion
    
    
    //#region Dspecial_air
    
if (my_hitboxID.attack == AT_DSPECIAL_AIR && my_hitboxID.hbox_num == 5 && (hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor = false)){
    dspec_airgrab = true;
    dspec_id = hit_player_obj;
    set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, 0);
    
    hit_player_obj.should_make_shockwave = false;
    
}
    //#endregion
    
    
//#endregion


//#region Strongs

    //#region Ustrong
if(my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 1)){
    move_cooldown[AT_USTRONG] = 100;
    hit_player_obj.should_make_shockwave = false;
    if(!slActive && stun_timer > stun_limit){
        hit_player_obj.throwlock = 0;
        hit_player_obj.throwid = id;
    }
            //hit_player_obj.x = x + (15 * spr_dir)
            //hit_player_obj.y = y - 85
        //#region summon sparks
     for (var spark = 1; spark <= 14; spark++)
     {
         var obSpark;
         obSpark = create_hitbox(AT_USTRONG, 3, hit_player_obj.x + (-38 + random_func(spark, 70, true)) * spr_dir, hit_player_obj.y - 80 + random_func_2(15-spark, 50, true))

        //#endregion)
    
        //#region Spark Movement
        var spark_speed = 1;
        var spark_speed_var = 3;

        obSpark.vsp = (spark_speed + random_func_2(spark, spark_speed_var, true)) * sin(degtorad(random_func(spark, 360, true))) * -1
        obSpark.hsp = (spark_speed + random_func_2(spark, spark_speed_var, true)) * cos(degtorad(random_func(spark, 360, true)))
    
    
        //#endregion
    
        //#region Spark angle
        obSpark.image_angle = random_func(spark, 360, true)
        //#endregion
     }
    
    
    
    window = 6;
    window_timer = 0;
}

    //#endregion
    
    //#region Dstrong
if(my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 1)){
    hit_player_obj.should_make_shockwave = false;
    if(hit_player_obj.soft_armor <= 0 && hit_player_obj.super_armor == false){
        dspec_grab = true;
        dspec_id = hit_player_obj;
    }
    
    /*if(get_player_damage(hit_player_obj.player) > 150 && !slActive){
        set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135)
        set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8)
        set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7)
        dstrong_cap = true;
    }*/
}
    
if(my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 2)){
    hit_player_obj.should_make_shockwave = false;
    //#region Sparks
     //#region summon sparks
     for (var spark = 1; spark <= 14; spark++)
     {
         var obSpark;
         obSpark = create_hitbox(AT_USTRONG, 3, hit_player_obj.x + (-30+ random_func(spark, 70, true)) * spr_dir, hit_player_obj.y - 50+ random_func_2(15-spark, 50, true))

        //#endregion)
    
        //#region Spark Movement
        var spark_speed = 1;
        var spark_speed_var = 3;

        obSpark.vsp = (spark_speed + random_func_2(spark, spark_speed_var, true)) * sin(degtorad(random_func(spark, 360, true))) * -1
        obSpark.hsp = (spark_speed + random_func_2(spark, spark_speed_var, true)) * cos(degtorad(random_func(spark, 360, true)))
    
    
        //#endregion
    
        //#region Spark angle
        obSpark.image_angle = random_func(spark, 360, true)
        //#endregion
        //#endregion
     }
     
     if(!slActive && dstrong_cap == false && stun_timer > stun_limit){
        hit_player_obj.hitstop_full += 10 + floor(get_player_damage(hit_player_obj.player)/5) + floor(strong_charge * 10 / 15)
        hit_player_obj.hitstop = hit_player_obj.hitstop_full;
        /*id.move_cooldown[AT_DSTRONG] = hit_player_obj.hitstop_full; //Lock out Cooldown
        id.move_cooldown[AT_FSTRONG] = hit_player_obj.hitstop_full;*/   
     }
    
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;
}

    //#endregion

    //#region Fstrong
if(my_hitboxID.attack == AT_FSTRONG){
    
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;
    id.window = 7;
    id.window_timer = 0;
    id.image_index = 0;
    id.move_cooldown[AT_FSTRONG] = 55;
    hit_player_obj.should_make_shockwave = false;
}

    //#endregion

    //#region ZSS Stun fix
if(!slActive && (my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FSTRONG || (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2))){
    stun_timer = 0;
    stun_shift();
}
    
    
    //#endregion


//#endregion


//#region Aerials

    //#region Dair
if(my_hitboxID.attack == AT_DAIR){
    if(my_hitboxID.hbox_num == 1){
        id.window = 4;
        id.window_timer = 0;
        id.image_index = 0;
        var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
        pop.depth = -10;
		/*if(get_player_damage(hit_player_obj.player) <= 70)
		{
			hit_player_obj.old_vsp *= -1;
		}*/
    }
    
    if(my_hitboxID.hbox_num == 2){
        if(get_player_damage(hit_player_obj.player) <= 70){
            set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
            set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 9);
            set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
            
        }
        else{
            reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
            reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
        }
    }
    
}

    //#endregion
    
    //#region Bair
if (my_hitboxID.attack == AT_BAIR && (my_hitboxID.hbox_num == 1 ||  my_hitboxID.hbox_num == 5)) {
    var pop = spawn_hit_fx( hit_player_obj.x + 30*my_hitboxID.spr_dir, hit_player_obj.y -45, lightningpop );
    pop.depth = -10;    
}
    //#endregion

//#endregion


//#region Tilts

    //#region Dtilt
/*if(my_hitboxID.attack == AT_DTILT){
    id.dtiltjumpcancel = true;
}*/
    //#endregion
//#endregion

//#region SL Add
slTimer += (slActive?4:6) * floor(my_hitboxID.damage) * (runeG?3:1);

//#endregion


#define stun_shift
if(stun_timer > stun_limit){
	
	reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_DSTRONG, 2, HG_ANGLE);
	reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
	
	for(var i = 1; i <= 12; ++i){
		reset_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSTRONG, i, HG_ANGLE);
		reset_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSTRONG, i, HG_EXTRA_HITPAUSE);
	}
	
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
}
else{
	set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
	set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.4);
	
	for(var i = 1; i <= 12; ++i){
		set_hitbox_value(AT_FSTRONG, i, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSTRONG, i, HG_ANGLE, 55);
		set_hitbox_value(AT_FSTRONG, i, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FSTRONG, i, HG_EXTRA_HITPAUSE, 0);
	}
	
	set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 18)
	set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.5)
}