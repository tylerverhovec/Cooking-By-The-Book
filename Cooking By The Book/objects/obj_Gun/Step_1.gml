///@desc Control Gun's Actions

//Changes value if player is pressing the left mouse button
mouse_shoot = mouse_check_button(mb_left);

//Rotate gun towards cursor's position
direction = point_direction(obj_Player.x, obj_Player.y, mouse_x, mouse_y);
image_angle = direction;

//Connect gun to player
x = obj_Player.x;
y = obj_Player.y;

//Shoot a basic tomato shot on left click w/ no meals
firingDelay--;
if (mouse_shoot && firingDelay < 0){
	
	firingDelay = framesTilNextShot;
	
	bulletSpawnX = x + lengthdir_x(gunLength, image_angle + gunDirection * sign(image_yscale));
	bulletSpawnY = y + lengthdir_y(gunLength, image_angle + gunDirection * sign(image_yscale));
	
	with(instance_create_layer(bulletSpawnX, bulletSpawnY, "Projectiles", obj_TomatoShot)){
		speed = 25;
		direction = other.direction + random_range(-3, 3);
		image_angle = irandom_range(0, 360);
	}
	
}

//Make sure sprite angle is facing right way
if (image_angle > 90 && image_angle < 270){
	image_yscale = -1;
}
else{
	image_yscale = 1;
}	
