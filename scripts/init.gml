hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .21;
crouch_anim_speed = .1;
walk_anim_speed = .22;
dash_anim_speed = .30;
pratfall_anim_speed = .25;

walk_speed = 2.75;
walk_accel = 0.2;
walk_turn_time = 2;
initial_dash_time = 2;
initial_dash_speed = 6.8;
dash_speed = 5.5;
dash_turn_time = 2;
dash_turn_accel = 1.3;
dash_stop_time = 5;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = 2; //multiplier of air_accel while in pratfall
air_friction = .07;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 8;
walljump_vsp = 12;
walljump_time = 8;
max_fall = 16; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .7;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

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

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
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
slHurtAmount = 2 

//damage
slNormalDamage = 1;
slActiveDamage = 1.25;
slDamageMult = slNormalDamage;

//knockback
slNormalKB = 1;
slActiveKB = 1.4;
slKBMult = slNormalKB;


//Uspecial 
USPpow = false; //Sweet Spot Kill box
USPdir = 0; //Angle direction input.

///Shadow Dash: Variables

//Control variables
dsActive = 0; //0 = inactive, 1 = active
dsSpawnTimer = 0; //should be 0 if dsActive is 0
dsMaxSpawnTime = 5; //Every dsMaxSpawnTime frames, a dash shadow spawns
dsMaxShadows = -1; //Maximum number of shadows that can exist, -1 for unlimited

//Number of shadows. Should not be changed manually, as it is monitored by itself.
dsNumShadows = 0; //Number of shadows in existence. If dsUseArticle is 0, then this is monitored by the size of the list of lists. Otherwise, it is monitored by the creation/destruction of the shadow article.

//Individual Shadow Variables
dsStartAlpha = 1; //Starting Alpha for the dash shadow
dsLifetime = 15; //This is how many frames the dash shadow lasts for, if dsStartAlpha = 1
dsStartScale = [1,1] //This is the starting x- and y- scales
dsEndScale = [1,1] //This is the ending x- and y- scales
dsStartDisp = [0,0] //Relative displacement at start
dsEndDisp = [0,0] //Relative displacement at end
dsDispChangeWith = [1,1] //Reflect displacement with x- scale or y-scale?
dsSnapPos = [0,0]; //Snap position to player (x,y) position

//Overriding sprites (WIP for non-articles)
dsOverrideSprite = 0; //0 for sprite_index, 1 for custom
dsReplacedSprite = -1; //-1 is none, anything else is a custom sprite index
dsReplacedIndex = -2 //-2 is sync with sprite_index of character, -1 is animate over and over, anything else is a single frame

//Shadow Dash: SPAWN DURING
dsNoDiscrim = 1; //0 for certain attacks and states, 1 for everything
dsSpawnDuring = []; //list of trigger states
dsSpawnAttack = [] //list of trigger attack indexes

//Nspecial
explode = false;

//Dspecial
shake = 0;

//Fstrong
staticloop = 0;

//Dtilt
dtiltjumpcancel = false;
