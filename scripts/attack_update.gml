//B - Reversals
switch (attack)
{
case AT_NSPECIAL:
case AT_FSPECIAL:
case AT_DSPECIAL:
case AT_USPECIAL:
case AT_DAIR:
case AT_DSPECIAL_AIR:
case AT_DSPECIAL_2:
    trigger_b_reverse();
	break;
}
	
	
//#region Grab End on kill
if(uspec_id.state == PS_RESPAWN || fspec_id.state == PS_RESPAWN || dspec_id.state == PS_RESPAWN){ // take priority
	uspec_grab = false;
	fspec_airgrab = false;
	dspec_airgrab = false;
}


//#endregion

//#region Specials
    //#region Nspecial
    // Old Nspecial
if (attack == AT_NSPECIAL){
	if(window == 1 && window_timer == 1){
		set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
	}
		
    if(window == 2 && !hit_pause){
        if(window_timer % 1 == 0){
            create_hitbox(AT_NSPECIAL, 2, x, y)
        }
        if(window_timer % 5 == 1 && !hit_pause){
           create_hitbox(AT_NSPECIAL, 3, x, y)
        }
        if(state_timer == 30){
            window = 3;
            window_timer = 0;
            image_index = 0;
        }
    }
    
       if(window == 2 && window_timer == 15){
		set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 4);
       }
    
    if(window == 3){
        can_strong = true;
        can_ustrong = true;
        if(special_down){
            explode = true;
        }
        if(window_timer = 12 && explode){
            window = 4;
            window_timer = 0;
            image_index = 0;
        
        }
    }
    if(window == 4){
        explode = false;
        if(window_timer == 20){
            window = 5;
            window_timer = 0;
            image_index = 0;
        }
    }
	vsp = clamp(vsp, -4, 3.5);
}

/*if(attack == AT_NSPECIAL){
	if(window == 1){
		if(window_timer == 1){
			Nspec_grab = false;
		}	
	
	}
	
	
}*/
    //#endregion

    //#region Fspecial
if (attack == AT_FSPECIAL){
	if(window == 1){
		if(window_timer == 1){
			fspec_airgrab = false;
		}
		if(!joy_pad_idle){
			if(joy_dir <= 20 || joy_dir >= 340 || (joy_dir <= 200 && joy_dir >= 160)){
				fspec_angle = 0;
			}
			if(joy_dir > 20 && joy_dir < 160){
				fspec_angle = 15;
			}
			if(joy_dir < 340 && joy_dir > 200){
				if(free){
					fspec_angle = 345;
				}
				else{
						fspec_angle = 0;
				}
			}
			
		}
		
	}
    if (window == 2){
        can_wall_jump = true;
        if( fspec_angle = 345 && !free){
        	fspec_angle = 0;
        }
        if(fspec_airgrab){
        	fspec_id.x = ease_linear(fspec_id.x, x + (60 * spr_dir), window_timer, 19);
        	fspec_id.y = ease_linear(fspec_id.y, y - 10, window_timer, 19);
    	}
        if(was_parried){
            window = 3;
            window_timer = 0;
        }    
        if(window_timer % 4 == 0){
            create_hitbox(AT_FSPECIAL, 1, x, y);
        }
        //movement
        hsp = cos(degtorad(fspec_angle)) * ease_cubeOut(30 * spr_dir, 10 * spr_dir, window_timer, 19);
        vsp = sin(degtorad(fspec_angle)) * ease_cubeOut(30 , 10 , window_timer, 19) * -1;
        
        //angle
        spr_angle = fspec_angle * spr_dir;	
 
    }
    
    if (window == 3){
        can_wall_jump = true;
        if !was_parried {
            can_jump = true;
            can_special = true;
            can_strong = true;
            can_ustrong = true;
        }
        spr_angle = 0;
    }
    can_fast_fall = false;
    move_cooldown[AT_FSPECIAL] = 30;
	x = clamp(x, 0, room_width);
}
//#endregion

    //#region Uspecial
if(attack == AT_USPECIAL){
	if(window == 1 && window_timer == 1){
		uspec_grab = false;
		uspec_id = -1;
		if(FtoU_timer < 30){
			FtoU = true;
		}
		else{
			FtoU = false;
		}
	}
	can_wall_jump = true;
    if(window == 2 && window_timer == 6){
        can_US = false;
    }

    if(window == 2){
        if(window_timer == 1){
            if(!joy_pad_idle){
				USPdir = joy_dir;    
            }
            if(FtoU){
            	Fspec_speed = 12;
            }
            else{
            	Fspec_speed = 26;
            }
        }
        if(!hitpause){
            if((USPdir >= 80 && USPdir <= 100) || (USPdir >= 170 && USPdir <= 360) || USPdir <= 10){
                vsp = ease_cubeOut(-Fspec_speed, 0, window_timer, 26);
            }
            if(USPdir > 100 && USPdir < 170){
                vsp = sin((110 / 180) * 3.14) * ease_cubeOut(-Fspec_speed, 0, window_timer, 26);
                hsp = cos((110 / 180) * 3.14) * ease_cubeOut(Fspec_speed, 0, window_timer, 26);
            }
            if(USPdir > 10 && USPdir < 80){
                vsp = sin((70 / 180) * 3.14) * ease_cubeOut(-Fspec_speed, 0, window_timer, 26);
                hsp = cos((70 / 180) * 3.14) * ease_cubeOut(Fspec_speed, 0, window_timer, 26);
            }
        }
        else{
            vsp = 0;
            hsp = 0;
        }
            
                    
            
        
        if(window_timer % 5 == 0 && window_timer < 25){
            var uspdrag = create_hitbox(AT_USPECIAL, 2, x, y);

            /*if(window_timer <= 3 && USPpow == true){
                uspdrag.image_xscale = 0.9
                uspdrag.kb_value = 18;
            }*/
            if(window_timer >= 20){
                uspdrag.kb_value = 4;
            }
        }
        if(USPpow == true && window_timer == 25 && !hitpause){
            create_hitbox(AT_USPECIAL, 3, x, y)
        }
            
           
        if(window_timer >= 21){
        	uspec_grab = false;
        }
        if(uspec_grab){
        
        	uspec_id.x = ease_expoOut(uspec_id.x, x + (30 * spr_dir), window_timer, 26);
        	uspec_id.y = ease_linear(uspec_id.y, y - 80, window_timer, 26);
    	}    
    }
    if(window == 3){
        USPpow = false;
    }
    can_move = true;
    air_accel = 0.25;
}
else{
	air_accel = 0.4;
}
//#endregion

    //#region Dspecial

if(attack == AT_DSPECIAL){
    ++shake;
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
    if(window == 3){
    	if(window_timer == 1){
    	
    		attack_invince = true;
    	}
    	if(window_timer >= 18){
    		attack_invince = false;
    	}
    }
    if(window == 2){
        if(shake == 30){
			set_state(PS_IDLE);
        }
    }
    
    
}

if(attack == AT_DSPECIAL_2){
    
    for(var i = 1; i <= 4; i++){
        set_hitbox_value(AT_DSPECIAL_2, i, HG_DAMAGE, 10 + DSP_dam)
    }
    if(window == 2 && window_timer == 6){
		if (dspec_buff)
			dspec_buff = false;
		else
			slTimer = 0;
    }
    if(window == 1 || window == 2){
        soft_armor = 99999;
    }
}

if(attack == AT_DSPECIAL_AIR){
	can_move = false;
	fall_through = down_down || down_stick_down;
    for(var i = 1; i <= 4; i++){
        set_hitbox_value(AT_DSPECIAL_AIR, i, HG_DAMAGE, 10 + DSP_dam)
    }
    if(window == 1 && window_timer == 1){
    	reset_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX)
        dspec_airgrab = false;
    }
    if(window == 3 && window_timer == 6){
		if (dspec_buff)
			dspec_buff = false;
		else
			slTimer = 0;
    }
    if(window == 1 || window == 2){
        soft_armor = 9999;
    }
    if(window == 2 && dspec_airgrab){
        dspec_id.x = x + (60 * spr_dir);
        dspec_id.y = y + 30;
    }
    
    if(window == 2 && !free){
        window = 3;
        window_timer = 0;
        image_index = 0;
    }
    if(window == 3){
        dspec_id = -1;
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
    if(window == 6){
		if (hitpause)
		{
			if (hit_player)
			{
				if(hit_player_obj.soft_armor <= 0 || hit_player_obj.super_armor == true){
					if (hitstop == 0)
					{
						hit_player_obj.x = x + spr_dir * 15;
						hit_player_obj.y = y - 65;
					}
					else
					{
						if (hit_player_obj.x > (x + spr_dir * 15))
						{
							hit_player_obj.x -= (hit_player_obj.x - (x + spr_dir * 15))/6;
						}
						else if (hit_player_obj.x < (x + spr_dir * 15))
						{
							hit_player_obj.x += ((x + spr_dir * 15) - hit_player_obj.x)/6;
						}
						if (hit_player_obj.y > (y - 65))
						{
							hit_player_obj.y -= (hit_player_obj.y - (y - 65))/6;
						}
						else if (hit_player_obj.y < (y - 65))
						{
							hit_player_obj.y += ((y - 65) - hit_player_obj.y)/6;
						}
					}
					hit_player_obj.hsp = 0;
					hit_player_obj.vsp = 0;
				}
			}
		}
		else
		{
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

	//#region Dstrong
if(attack == AT_DSTRONG){
	if(window == 1 && window_timer == 1){
    	dspec_grab = false;
		dstrong_cap = false;
		/*if(!slActive){
        	reset_hitbox_value(AT_DSTRONG, 2, HG_ANGLE);
        	reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK);
        	reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
		}*/
	}
	if(dspec_grab && window == 3){
        dspec_id.x = ease_linear(dspec_id.x, x - (60 * spr_dir), window_timer, 9);
        dspec_id.y = ease_linear(dspec_id.y, y - 12, window_timer, 9);
		with (dspec_id)
		{
			if (state != PS_RESPAWN || state != PS_DEAD)
				set_state(PS_HITSTUN);
		}
    }
}
	
	//#endregion

//#endregion

//#region Jab
if(attack == AT_JAB){
    if(window == 1){
        move_cooldown[AT_JAB] = 40;
    }
    else if(window == 6){
        can_attack = true;
    }
}

//#endregion

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


//#region Tilts

    //#region DTILT
if(attack == AT_DTILT){
    if(window == 1 && window_timer == 1){
        dtiltjumpcancel = false;
    }
    if(dtiltjumpcancel){
        //can_jump = true;
        can_strong = true;
        can_ustrong = true;

    }
}

    //#endregion


//#endregion

//#region Aerials

    //#region DAIR
if(attack == AT_DAIR){
    if(window == 1 && window_timer == 14){
        reset_hitbox_value(AT_DAIR, 1, HG_ANGLE);
        reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
        reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
        DAIR_jcTimer = 1;
    }
    if(window == 2){
        if(!free){
            window = 3;
            window_timer = 0;
            image_index = 0;
        }
        if((!slActive && DAIR_jcTimer > 20) || (slActive && DAIR_jcTimer >10)){
            can_jump = true;
            can_special = true;
        }
        
        can_wall_jump = true;
    }
    ++DAIR_jcTimer;
    
}

    //#endregion

    //#region NAIR
if(attack == AT_DAIR){
	air_accel = 0.2;
	fall_through = down_down || down_stick_down;
}
    
    //#endregion

	//#region Bair
if(attack == AT_BAIR){
	if(window == 3){
		can_jump = true;
		can_wall_jump = true;
		can_special = true;
	}
}
	
	
	//#endregion


//#endregion
 //Taunt for SL
 if(inPractice && attack == AT_TAUNT && window == 1 && window_timer == 1 && !hitpause && down_down && !slActive){
   slTimer += 600;
}

if(slActive){
    set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("SL_spark"))
}
else{
    reset_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE)
}

if(!slActive && stun_timer > stun_limit){
	stun_shift();
}

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
