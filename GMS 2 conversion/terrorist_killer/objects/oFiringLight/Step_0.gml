// Position.
x = oCrosshairs.x;
y = oCrosshairs.y;
Light_X = x;
Light_Y = y;

// Firing.
if (oCrosshairs.firing && random(10) > 4)
  Light_Active = true;
else
  Light_Active = false;