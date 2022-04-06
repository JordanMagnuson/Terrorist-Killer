// Lighting depends on Fake Light 3 scripts: https://marketplace.yoyogames.com/assets/5348/fake-light-3
light_controller = instance_create_depth(0,0,-1,obj_light_ctrl);
light_controller.Blackness_Value = 0.99; //The alpha value of the "darkness"
mouse_light = instance_create_depth(0,0,0,oMouseLight);
firing_light = instance_create_depth(0,0,0,oFiringLight);