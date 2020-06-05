/*set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .31);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("ab"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .31);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("N_Special_2"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .31);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .31);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("N_Special_3"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, .31);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 20);



set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 100 );
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 49);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);*/