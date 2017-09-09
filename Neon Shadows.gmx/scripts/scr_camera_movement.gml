///Camera
/*zoom
var zoom_speed = 0.1;

view_zoom += mouse_wheel_up() * zoom_speed;
view_zoom -= mouse_wheel_down() * zoom_speed;

view_zoom = clamp(view_zoom,1,view_max_zoom);

view_wview = obj_display_manager.ideal_width/view_zoom;
view_hview = obj_display_manager.ideal_height/view_zoom; */

//centering
view_xview[0] += ((x - view_wview[0]/2) - view_xview[0]) * 0.3;
view_yview[0] += ((y-72 - view_hview[0]/2) - view_yview[0]) * 0.3;
//view_yview[0] -= (view_hview[0]-(y - view_yview[0])-128) * 0.1;   //view not centered
//view_yview[0] -= (view_hview[0]/2-(y-view_yview[0])) * 0.1;  //view really centered

view_xview[0] = clamp(view_xview[0],0,room_width-view_wview);
view_yview[0] = clamp(view_yview[0],0,room_height-view_hview);
