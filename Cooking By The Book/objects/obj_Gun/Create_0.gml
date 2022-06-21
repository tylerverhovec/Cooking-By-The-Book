///@desc Declare & Initialize Variables

firingDelay = 0;
framesTilNextShot = 20;

//Distances from sprite origin to tip of barrel
gunOffsetX = 75;
gunOffsetY = -4;

gunDirection = point_direction(0, 0, gunOffsetX, gunOffsetY);
gunLength = point_distance(0, 0, gunOffsetX, gunOffsetY);