///@desc Pick Up Bread

if (point_distance(x, y, obj_Player.x, obj_Player.y) < 150){
	if (FoodManager.numOfIngredientsHeld < FoodManager.carryCapacity){
		if (obj_Player.key_pickUp){
			FoodManager.hasBread = true;
			FoodManager.numOfIngredientsHeld++;
		}
	}
}	
