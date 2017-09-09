//jump (up)
if (vsp > 0)
{
    if (mv > 0)sprite_index = spr_shadow_jump_up_Right;
    if (mv < 0)sprite_index = spr_shadow_jump_up_Left;
}

//jump (down)
if (vsp < 0) 
{
    if (mv > 0)sprite_index = spr_shadow_jump_down_Right;
    if (mv < 0)sprite_index = spr_shadow_jump_down_Left;
}
