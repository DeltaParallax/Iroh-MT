set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);/**/

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 23);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sfx_dspecial_2"));

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_DSPECIAL_2, 4);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 75);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 93);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 22);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 105);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 102);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 22);
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -74);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 114);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 84);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 86);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 50);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -50);
//set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_DSPECIAL_2, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -91);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, 127);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 96);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 86);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT_X_OFFSET, 50);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, -50);
//set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 45);