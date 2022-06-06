///@desc Pick Up Gun

//Acquire gun if within 150 radius of gun, the gun is currently not being held, 
//and the pick up key is pressed
if (point_distance(x, y, obj_Player.x, obj_Player.y) < 150){
	if (FoodManager.hasFoodGun == false){
		if (obj_Player.key_pickUp){
			FoodManager.hasFoodGun = true;
			instance_destroy(self);
		}
	}
}	
