#define lt_init
globalvar lightpref_lights,lightpref_backcolor,lightpref_surface,lightpref_enabled,lightpref_view,lightpref_mandraw,lightpref_addative;
globalvar light_sprite,light_x,light_y,light_on,light_color,light_frame,light_xs,light_ys,light_rot;
globalvar light_objectid;
lightpref_addative=true;
lightpref_lights=0;
lightpref_backcolor=c_black;
lightpref_surface=surface_create(640,480);
lightpref_enabled=false;
lightpref_view=-1;
lightpref_mandraw=0;

light_objectid=object_add();
object_set_depth(light_objectid,0);
object_event_add(light_objectid,ev_step,0,"lights_refresh();");
object_event_add(light_objectid,ev_draw,0,"lights_redraw();");

#define lights_refresh
if (lightpref_enabled==false) exit;
surface_set_target(lightpref_surface);
draw_clear_alpha(lightpref_backcolor,0);
draw_set_blend_mode_ext(2,4);
var i;
i=0;
while (i<=lightpref_lights)
{
    if (i!=0)
    {
        if (light_on[i]==true)
        {
            if (lightpref_view<0)
                draw_sprite_ext(light_sprite[i],light_frame[i],light_x[i],light_y[i],light_xs[i],light_ys[i],light_rot[i],light_color[i],1);
            else
                draw_sprite_ext(light_sprite[i],light_frame[i],light_x[i]-view_xview[lightpref_view],light_y[i]-view_yview[lightpref_view],light_xs[i],light_ys[i],light_rot[i],light_color[i],1);
        }
    }
    i+=1;
}
draw_set_blend_mode(0);
surface_reset_target();

#define lights_redraw
if (lightpref_enabled==false) exit;
if (lightpref_addative==true)
    draw_set_blend_mode_ext(9,3);
else
    draw_set_blend_mode_ext(9,1);
if (lightpref_view<0)
    draw_surface_ext(lightpref_surface,0,0,1,1,0,c_white,1);
else
    draw_surface_ext(lightpref_surface,view_xview[lightpref_view],view_yview[lightpref_view],1,1,0,c_white,1);
draw_set_blend_mode(0);

#define lt_sysset
lightpref_enabled=argument0;
lightpref_view=argument1;
lightpref_addative=argument4;
if (argument5==true)
    lightpref_lights=0;
var sw,sh;
sw=surface_get_width(lightpref_surface);
sh=surface_get_height(lightpref_surface);
if (lightpref_view<0)
{
    if (sw!=room_width||sh!=room_height)
    {
        surface_free(lightpref_surface);
        lightpref_surface=surface_create(room_width,room_height);
    }
}
else
{
    if (sw!=view_wview[lightpref_view]||sh!=view_hview[lightpref_view])
    {
        surface_free(lightpref_surface);
        lightpref_surface=surface_create(view_wview[lightpref_view],view_yview[lightpref_view]);
    }
}

lightpref_backcolor=argument2;
lightpref_mandraw=argument3;

if (lightpref_mandraw==true)
{
    if (!instance_exists(light_objectid))
    {
        instance_create(0,0,light_objectid);
        with (light_objectid)
            depth=argument6;
    }
    else
    {
        with (light_objectid)
            depth=argument6;
    }
}
else
{
    if (instance_exists(light_objectid))
    {
        with (light_objectid)
            instance_destroy();
    }
}

#define lt_lightadd
lightpref_lights+=1;
light_sprite[lightpref_lights]=argument0;
light_frame[lightpref_lights]=argument1;
light_x[lightpref_lights]=argument2;
light_y[lightpref_lights]=argument3;
light_xs[lightpref_lights]=argument4;
light_ys[lightpref_lights]=argument5;
light_rot[lightpref_lights]=argument6;
light_color[lightpref_lights]=argument7;
light_on[lightpref_lights]=argument8;

return (lightpref_lights);

#define lt_lightset
var ID;
ID=argument0;
light_sprite[ID]=argument1;
light_frame[ID]=argument2;
light_x[ID]=argument3;
light_y[ID]=argument4;
light_xs[ID]=argument5;
light_ys[ID]=argument6;
light_rot[ID]=argument7;
light_color[ID]=argument8;
light_on[ID]=argument9;

#define lt_lightget_x
return (light_x[argument0]);

#define lt_lightget_y
return (light_y[argument0]);

#define lt_lightget_on
return (light_on[argument0]);

#define lt_end
surface_free(lightpref_surface);

