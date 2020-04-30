//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//#region Specials
    //#region Nspecial
if (attack == AT_NSPECIAL){
    if(window == 1 && !hit_pause){
        if(state_timer % 2 == 0){
            create_hitbox(AT_NSPECIAL, 2, x, y)
        }
        if(state_timer % 5 == 0){
            create_hitbox(AT_NSPECIAL, 3, x, y)
        }
        if(state_timer == 30){
            window = 2;
            window_timer = 0;
            image_index = 0;
        }
    }
    if(window == 2){
        
        can_strong = true;
        if(special_down){
            explode = true;
        }
        if(window_timer = 12 && explode == true){
            window = 3;
            window_timer = 0;
            image_index = 0;
        
        }
    }
    if(window == 3){
        explode = false;
        if(window_timer == 20){
            window = 4;
            window_timer = 0;
            image_index = 0;
        }
    }
    if(vsp < -4){
        vsp = -4;
    }
    if(vsp > 3.5){
        vsp = 3.5
    }
}
//#endregion

    //#region Fspecial
if (attack == AT_FSPECIAL){
    if (window == 2){
        can_wall_jump = true;
        if(was_parried){
            window = 3;
            window_timer = 0;
        }    
        if(window_timer % 2 == 0){
            create_hitbox(AT_FSPECIAL, 1, x, y)
        hsp = ease_cubeOut(30 * spr_dir, 10 * spr_dir, window_timer, 25);
        }
    }
    if (window == 3){
        can_jump = true;
        can_special = true;
        can_strong = true;
    }
    can_fast_fall = false;
    move_cooldown[AT_FSPECIAL] = 40;
}
//#endregion

    //#region Uspecial
if(attack == AT_USPECIAL){

    if(window == 2){
        if(window_timer == 1){
            if(!joy_pad_idle){
            USPdir = joy_dir;    
            }
        }
                if((USPdir >= 80 && USPdir <= 100) || (USPdir >= 170 && USPdir <= 360) || USPdir <= 10){
                    vsp = ease_cubeOut(-30, 0, window_timer, 26);
                }
                if(USPdir > 100 && USPdir < 170){
                    vsp = sin((110 / 180) * 3.14) * ease_cubeOut(-30, 0, window_timer, 26);
                    hsp = cos((110 / 180) * 3.14) * ease_cubeOut(30, 0, window_timer, 26);
                }
                if(USPdir > 10 && USPdir < 80){
                    vsp = sin((70 / 180) * 3.14) * ease_cubeOut(-30, 0, window_timer, 26);
                    hsp = cos((70 / 180) * 3.14) * ease_cubeOut(30, 0, window_timer, 26);
                }
            
                    
            
        
        if(window_timer % 2 == 0 && window_timer < 25){
            var uspdrag = create_hitbox(AT_USPECIAL, 2, x, y);

            if(window_timer <= 3 && USPpow == true){
                uspdrag.image_xscale = 0.9
                uspdrag.kb_value = 18;
            }
            if(window_timer >= 20){
                uspdrag.kb_value = 4;
            }
        }
        if(USPpow == true && window_timer == 25 && !hitpause){
            create_hitbox(AT_USPECIAL, 3, x, y)
        }
            
    }
    if(window == 3){
        USPpow = false;
    }
    
    can_move = true;
}
//#endregion

    //#region Dspecial

if(attack == AT_DSPECIAL){
    shake++
    if(window == 1){
        can_fast_fall = false;
        soft_armor = 99999;
        if(state_timer == 30){
            window = 2;
            window_timer = 0;
            image_index = 0;
            shake = 0;
        }
    }
    if(window == 2 || window == 3){
        soft_armor = 0;
    }
    if(window == 2){
        if(shake == 30){
            state = PS_IDLE;
        }
    }
    
    
}

if(attack == AT_DSPECIAL_2){
    if(window == 1 && window_timer == 1){
        slActive = false;
        slTimer = 0;
    }
    if(window == 1 || window  == 2){
        soft_armor = 99999;
    }
}

if(attack == AT_DSPECIAL_AIR){
    if(window == 1 && window_timer == 1){
        slActive = false;
        slTimer = 0;
    }
    if(window == 1 || window == 2){
        soft_armor = 9999;
    }
    if(window == 2 && !free){
        window = 3;
        window_timer = 0;
        image_index = 0;
    }
}


//#endregion

//#endregion

//#region Strongs

    //#region Ustrong
if(attack == AT_USTRONG){
    if(window == 3 && !hitpause){
        vsp = ease_sineOut(-6 + (floor(strong_charge / 15) *  -2), 0, window_timer, 20); //jump charge distance
        hsp = 0;
        if(window_timer == 1){
            var UST = create_hitbox(AT_USTRONG, 1, x, y)
                UST.can_tech = 1;
                UST.kb_value = 12 + floor(window_timer / 5) * 3;
        }
    }
    if(window == 6 && !hitpause){
        vsp = ease_sineOut(-8, -4, window_timer, 15);
        
        if(window_timer <= 6 && window_timer % 3 = 0){
            var USTsparks1 = create_hitbox(AT_USTRONG, 3, x + (12 + random_func(1, 3, true)) * spr_dir, y - 100 + random_func(5, 3, true)); 
            var USTsparks2 = create_hitbox(AT_USTRONG, 3, x + (12 + random_func(2, 3, true)) * spr_dir, y - 100 + random_func(6, 3, true)); 
            var USTsparks3 = create_hitbox(AT_USTRONG, 3, x + (12 + random_func(3, 3, true)) * spr_dir, y - 100 + random_func(7, 3, true)); 
            var USTsparks4 = create_hitbox(AT_USTRONG, 3, x + (12 + random_func(4, 3, true)) * spr_dir, y - 100 + random_func(8, 3, true)); 
        
        var USTsparkspeed = -7;
        
        USTsparks1.vsp = USTsparkspeed * sin(degtorad(258 + random_func(1, 30, true))); 
        USTsparks1.hsp = USTsparkspeed * cos(degtorad(258 + random_func(1, 30, true))) * spr_dir * -1;
        
        USTsparks2.vsp = USTsparkspeed * sin(degtorad(258 + random_func(2, 30, true))); 
        USTsparks2.hsp = USTsparkspeed * cos(degtorad(258 + random_func(2, 30, true))) * spr_dir * -1;
        
        USTsparks3.vsp = USTsparkspeed * sin(degtorad(258 + random_func(3, 30, true))); 
        USTsparks3.hsp = USTsparkspeed * cos(degtorad(258 + random_func(3, 30, true))) * spr_dir * -1;
        
        USTsparks4.vsp = USTsparkspeed * sin(degtorad(258 + random_func(4, 30, true))); 
        USTsparks4.hsp = USTsparkspeed * cos(degtorad(258 + random_func(4, 30, true))) * spr_dir * -1;
        /*
        can_jump = true;
        can_special = true;
        can_move = true;
        can_attack = true;*/
        }
    }
}


//#endregion

    //#region Fstrong
if(attack == AT_FSTRONG){
    if(window = 2 && window_timer == 9){
        if(strong_charge >= 10 && strong_charge < 40){
            window = 5;
            window_timer = 0;
            image_index = 0;
        }
        if(strong_charge >= 40){
            window = 6;
            window_timer = 0;
            image_index = 0;
        }
        
    }
    if((window == 5 || window == 6) && window_timer == 4) {
        window = 3;
        window_timer = 0;
        image_index = 0;
    }
}
//#endregion

//#endregion

//#region Jab
if(attack == AT_JAB){
    if(window == 1){
        move_cooldown[AT_JAB] = 40;
    }
    if(window == 6){
        can_attack = true;
    }
}

//#region Dash Attack
if(attack == AT_DATTACK){
    if(window == 2){
    if(was_parried){
        window = 3;
        window_timer = 0;
    }
    }
}

//#endregion

//#region Aerials

    //#region Dair
if(attack == AT_DAIR && window == 2){
    if(!free){
        window = 3;
        window_timer = 0;
        image_index = 0;
    }
}


//#endregion


//#region Tilts

if(attack == AT_DTILT){
    if(window == 1 && window_timer == 1){
        dtiltjumpcancel = false;
    }
    if(dtiltjumpcancel = true){
        can_jump = true;
    }
}


//#endregion

//#region Aerials

    //#region DAIR
if(attack == AT_DAIR){
    if(window == 2){
        if(window_timer > 30){
            can_jump = true;
            can_special = true;
        }
        
        can_wall_jump = true;
    }
    
}



//#endregion

//#endregion