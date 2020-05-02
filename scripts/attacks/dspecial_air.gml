set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);/*
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));*/

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 13);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_DSPECIAL_AIR, 5);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 93);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 122);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 102);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -74);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 132);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 84);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 86);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -50);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, -81);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 135);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 96);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 86);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -50);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITSTUN_MULTIPLIER, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WIDTH, 41);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_GROUP, -1);