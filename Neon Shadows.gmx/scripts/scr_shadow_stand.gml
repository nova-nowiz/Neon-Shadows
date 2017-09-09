scr_getinput();

//React to input
    //Horizontal
    mv = key_left + key_right;
    mvsp = 1/sqrt(mvframecount+0.5);
    hsp += mv * mvsp;
    
        //frixion
        if (abs(hsp) >= fric)
        {
            if (mv == 0 || mv != sign(hsp))
            {
                hsp -= sign(hsp) * fric;
            }
        }
        if (mv == 0 && abs(hsp) < fric) hsp = 0;
        
        //max speed
        if (abs(hsp) > maxhsp)
        {
        hsp = sign(hsp) * maxhsp;
        }
        
    //Vertical
        //gravity
        if (vsp < maxvsp) vsp += grav;
        
        //jump
        if (place_meeting(x,y+1,obj_wall))
        {
            vsp = key_jump * jumpsp;
        }
        if(vsp < 0 && !key_jump_held) vsp = max(vsp,-jumpsp/4);
        
//mvframecount calcul
if (mv != 0 && mv == previousmv) mvframecount +=1;
else mvframecount = 0;
        
//state change
if (crouch && abs(hsp) >= maxhsp) state = states.slide;

if (crouch && state != states.slide) state = states.crouch;

scr_collision();
x = clamp(x,16,room_width-16);
