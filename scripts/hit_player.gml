//#region Specials

    //#region Fspecial
if ( my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 1 ||  my_hitboxID.hbox_num == 2)) {
  hit_player_obj.should_make_shockwave = false;
}
    //#endregion
    
    //#region Uspecial
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
    my_hitboxID.player_id.USPpow = true;
}

if ( my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 ||  my_hitboxID.hbox_num == 2)) {
  hit_player_obj.should_make_shockwave = false;
}


    //#endregion
    
//#endregion


//#region Strongs

    //#region Ustrong
if(my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 1)){
    move_cooldown[AT_USTRONG] = 100;
    hit_player_obj.should_make_shockwave = false;
    if(!slActive){
        hit_player_obj.throwlock = 0;
        hit_player_obj.throwid = id;
    }
    with(oPlayer){
        if(id != other.id){
            x = other.x + (15 * other.spr_dir)
            y = other.y - 85
        }
    }
        //#region summon sparks
     for (var spark = 1; spark <= 14; spark++)
     {
         var obSpark;
         obSpark = create_hitbox(AT_USTRONG, 3, x + (25 + random_func(spark, 70, true)) * spr_dir, y - 180 + random_func_2(15-spark, 50, true))

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
    }
    
if(my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 2)){
    hit_player_obj.should_make_shockwave = false;
    //#region Sparks
     //#region summon sparks
     for (var spark = 1; spark <= 14; spark++)
     {
         var obSpark;
         obSpark = create_hitbox(AT_USTRONG, 3, x + (-120 + random_func(spark, 70, true)) * spr_dir, y - 60 + random_func_2(15-spark, 50, true))

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
     if(!slActive){
        hit_player_obj.hitstop_full += floor(get_player_damage(hit_player_obj.player)/5) + floor(strong_charge * 10 / 15)
        hit_player_obj.hitstop = hit_player_obj.hitstop_full;
     }
    
}

    //#endregion

    //#region Fstrong
if(my_hitboxID.attack == AT_FSTRONG){
    id.window = 7;
    id.window_timer = 0;
    id.image_index = 0;
    id.move_cooldown[AT_FSTRONG] = 55;
    hit_player_obj.should_make_shockwave = false;
}

    //#endregion

//#endregion


//#region Aerials

    //#region Dair
if(my_hitboxID.attack == AT_DAIR){
    id.window = 4;
    id.window_timer = 0;
    id.image_index = 0;
}

    //#endregion

//#endregion


//#region Tilts

    //#region Dtilt
if(my_hitboxID.attack == AT_DTILT){
    id.dtiltjumpcancel = true;
}
    //#endregion
//#endregion

//#region SL Add
if(!slActive){
    slTimer += 9 * floor(my_hitboxID.damage)
}
if(slActive){
    slTimer += 6 * floor(my_hitboxID.damage)
}