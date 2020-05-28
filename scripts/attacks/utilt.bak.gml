set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT, 10);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 61);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 61);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 39);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -79);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 12);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -87);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -14);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -38);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, -14);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, -38);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, -49);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 10, HG_PARENT_HITBOX, 10);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 10);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_GROUP, 1);