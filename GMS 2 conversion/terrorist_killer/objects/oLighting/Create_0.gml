//lt_sysset(1,-1,make_color_rgb(10,10,10),true,true,1,-10);
//lt_sysset(1,-1,c_gray,true,true,1,-10);
/*Sets the settings for
all of the lighting settings. If this function is not called at least once
the lights will not be drawn for that room.
Argument0 - Turns lighting system on/off
Argument1 - View to limit lighting too (Much faster) -1 for no view
Argument2 - Background color. Transparency is determined by color:
    c_black=Solid black
    c_gray=Completely Transparent (No surround lighting)
    c_white=100%Addative (Not usually desired)
    For best results keep rgb average below 125
Argument3 - Turns autodraw on/off. If on lights are drawn by the system
            if off, you can draw the lights manualy using the following:
    lights_refresh() - Refreshes light's positions (anywhere but draw event)
    lights_redraw() - Draws the lights on the screen (draw event)
    This is useful if you only want static lights and only need to draw the
    lights once, much faster. Or, if you are using deactivation, this method
    must be used.
Argument4 - Turns addative lighting on/off. If on the lights will add to
            the object's colors and brighten them. If it is off it will
            simply add color the objects acording to the lights. There is
            no speed difference, simply a matter of preference.
Argument5 - Resets/deletes all lights. (Make sure to use at the beginning 
            of each level, unless you want to use the same lights as the
            previous levels.
Argument6 - Lighting depth (Only used with automatic draw)
*/

//mouse_light=lt_lightadd(light_s2,0,.5,.5,1,1,0,c_white,1);//Turned on and off with mouse
//firing_light=lt_lightadd(light_s2,0,.5,.5,1,1,0,c_white,1);//Turned on and off with mouse
lightOn = false;

//debug light
//debugLight=lt_lightadd(sLightDebug,0,5,5,1,1,0,c_white,true);

/* */
/*  */
