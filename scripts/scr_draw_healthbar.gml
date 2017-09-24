///Health bar

{
    x1 = argument0;
    y1 = argument1;
    x2 = argument2;
    y2 = argument3;
    amount = argument4 / 100;
    bgCol = argument5;
    hbCol = argument6;
    borderCol = argument7;
    //surface_set_target(global.light);
    draw_set_blend_mode(bm_normal);
    depth = -7;
    draw_set_colour(bgCol);
    draw_rectangle(x1,y1,x2,y2,false);
    depth = 8
    draw_set_colour(borderCol);
    draw_rectangle(x1 - 4,y1 - 4,x2 + 4,y2 + 4,false);
    
    
    
    if (amount == 1){
        depth = -9;
        draw_set_colour(hbCol);
        draw_rectangle(x1,y1,x2,y2,false);
    }
    else {
        depth = -9;
        draw_set_colour(hbCol);
        draw_rectangle(x1,y1,x1+(x2-x1)*amount,y2,false);
    }
    //surface_reset_target();
}
