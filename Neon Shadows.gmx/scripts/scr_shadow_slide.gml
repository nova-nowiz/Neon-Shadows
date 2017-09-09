scr_getinput();

//React to input
    //Horizontal
        //frixion
        hsp -= sign(hsp) * fric_slide;
        
    //Vertical
        //gravity
        if (vsp < maxvsp) vsp += grav;
        
//mvframecount calcul
if (mv != 0 && mv == previousmv) mvframecount +=1;
else mvframecount = 0;
        
//state change

if (abs(hsp) <= maxcrouchhsp)
{
    x+= sign(hsp) * 32;
    if (crouch) state = states.crouch;
    if (!crouch && !place_meeting(x,y-16,obj_wall)) state = states.stand;
    else state = states.crouch;
}

scr_collision();
if (state == states.slide) x = clamp(x,48,room_width-48);
