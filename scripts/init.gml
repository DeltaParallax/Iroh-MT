hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = sprite_get("jump_hurt");
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .21;
crouch_anim_speed = .1;
walk_anim_speed = .22;
dash_anim_speed = .30;
dash_ASP = 4;
pratfall_anim_speed = .25;

walk_speed = 2.75;
walk_accel = 0.2;
walk_turn_time = 5;
initial_dash_time = 8;
initial_dash_speed = 7.2;
dash_speed = 6.0;
dash_turn_time = 10;
dash_turn_accel = 1.3;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .33;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = .055;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 8;
walljump_vsp = 9;
walljump_time = 7;
max_fall = 14; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 0.90; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("sfx_landing");
landing_lag_sound = sound_get("sfx_landing");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Iroh variables
walk_indicate = -1 //-1 = not walking, 0 = start, 1 = end, go directly to -1
jump_loop = 0

//Sanguine Lightning Variables
slActive = false;
slTimer = 0;
slTimerLimit = 600; //10 seconds worth of frames

//self-damage
slHurtTimer = 0;
slMaxHurtTime = 120; //2 seconds worth of frames
slHurtAmount = 4 

//damage
slNormalDamage = 1;
slActiveDamage = 1.25;
slDamageMult = slNormalDamage;

//knockback
slNormalKB = 1;
slActiveKB = 1.4;
slKBMult = slNormalKB;

//bar stuff
slBarShake = 0
slBarIndex = 0

//Uspecial 
USPpow = false; //Sweet Spot Kill box
USPdir = 0; //Angle direction input.

//Uspecial
can_US = false;

//Nspecial
explode = false;

//Dspecial
shake = 0;
dspec_airgrab = false;
dspec_id = 0;
DSP_dam = 0;

//Fstrong
staticloop = 0;

//Dtilt
dtiltjumpcancel = false;

//DAIR
DAIR_jcTimer = 0;

//SL transformation
SL_trans_timer = 60;
sltrans = noone;

//sparks
spark_state = 0;
SL_trans_timer = 0;
SL_fizzle = noone;
SL_fizzle_timer = 0;
SL_sparkTimer = 0;

//hiteffects

    lightningpop = hit_fx_create(sprite_get("lightningpop"), 30) 
    SL_lightningpop = hit_fx_create(sprite_get("SL_lightningpop"), 30) 
//#region SL Sprites

useskins = false;

//Ground
spr_idle = sprite_get("idle");
spr_crouch = sprite_get("crouch");
spr_walk = sprite_get("walk");
spr_walkturn = sprite_get("walkturn");
spr_walkstart = sprite_get("walkstart");
spr_walkstop = sprite_get("walkstop");
spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");

//Air
spr_jumpstart = sprite_get("jumpstart");
spr_jump = sprite_get("jump");
spr_doublejump = sprite_get("doublejump");
spr_walljump = sprite_get("walljump");
spr_pratfall = sprite_get("pratfall");
spr_land = sprite_get("land");
spr_landinglag = sprite_get("landinglag");

//Dodge
spr_parry = sprite_get("parry");
spr_roll_forward = sprite_get("roll_forward");
spr_roll_backward = sprite_get("roll_backward");
spr_airdodge = sprite_get("airdodge");
spr_airdodge_forward = sprite_get("airdodge_forward");
spr_airdodge_back = sprite_get("airdodge_back");
spr_airdodge_upforward = sprite_get("airdodge_upforward");
spr_airdodge_downforward = sprite_get("airdodge_downforward");
spr_airdodge_upback = sprite_get("airdodge_upback");
spr_airdodge_downback = sprite_get("airdodge_downback");
spr_airdodge_waveland = sprite_get("waveland");
spr_tech = sprite_get("tech");

//Hurt
spr_hurt = sprite_get("hurt");
spr_bighurt = sprite_get("bighurt");
spr_hurtground = sprite_get("hurtground");
spr_uphurt = sprite_get("uphurt");
spr_downhurt = sprite_get("downhurt");
spr_bouncehurt = sprite_get("bouncehurt");
spr_spinhurt = sprite_get("spinhurt");

//Attack
spr_jab = sprite_get("jab");
spr_dattack = sprite_get("dattack");
spr_ftilt = sprite_get("ftilt");
spr_dtilt = sprite_get("dtilt");
spr_utilt = sprite_get("utilt");
spr_nair = sprite_get("nair");
spr_fair = sprite_get("fair");
spr_bair = sprite_get("bair");
spr_uair = sprite_get("uair");
spr_dair = sprite_get("dair");
spr_fstrong = sprite_get("fstrong");
spr_ustrong = sprite_get("ustrong");
spr_dstrong = sprite_get("dstrong");
spr_nspecial = sprite_get("nspecial");
spr_fspecial = sprite_get("fspecial");
spr_dspecial = sprite_get("dspecial");
spr_fspecial_air = sprite_get("fspecial_air");
spr_uspecial = sprite_get("uspecial");
spr_dspecial = sprite_get("dspecial");
spr_dspecial_2 = sprite_get("dspecial_2");
spr_dspecial_air = sprite_get("dspecial_air");
spr_taunt = sprite_get("taunt");

//hiteffects
spr_lightningpop = sprite_get("lightningpop")

//Respawn
spr_plat = sprite_get("plat");

// hud meter ease
hud_timer = 0;

// Hikaru Support
Hikaru_Title = "Fakie Werefox";

//#endregion

particles = ds_list_create()