//crouching (standing)
if (hsp == 0)
{
    image_speed = 0.08;
    if (previous_hsp_sign == 1) sprite_index = spr_shadow_crouch_standing_Right;
    if (previous_hsp_sign == -1) sprite_index = spr_shadow_crouch_standing_Left;
}

//crouching (walking)
if (mv != 0)
{
    image_speed = hsp/maxcrouchhsp * 0.08;
    if (mv == 1) sprite_index = spr_shadow_crouch_moving_Right;
    if (mv == -1) sprite_index = spr_shadow_crouch_moving_Left;
}
