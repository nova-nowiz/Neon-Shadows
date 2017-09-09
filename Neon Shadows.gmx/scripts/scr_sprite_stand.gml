//standing up (standing)
if (hsp == 0)
{
    image_speed = 0.08;
    if (previous_hsp_sign == 1) sprite_index = spr_shadow_standing_Right;
    if (previous_hsp_sign == -1) sprite_index = spr_shadow_standing_Left;
}

//standing up (walking)
if (mv * hsp > 0)
{
    image_speed = hsp/maxhsp * 0.08;
    if (mv == 1) sprite_index = spr_shadow_moving_Right;
    if (mv == -1) sprite_index = spr_shadow_moving_Left;
}

//"drifting"
if (previousmv != mv && mv * hsp < 0)
{
    image_speed = 0.08;
    if (mv == 1) sprite_index = spr_shadow_drift_Right;
    if (mv == -1) sprite_index = spr_shadow_drift_Left;
}
