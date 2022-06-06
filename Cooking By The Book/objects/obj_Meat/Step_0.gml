///@desc Pick Up Ingredient

//Acquire ingredient if within 150 radius of ingredient, there is room for the ingredient,
//the ingredient is currently not being held, and the pick up key is pressed
if (point_distance(x, y, obj_Player.x, obj_Player.y) < 150){
	if (FoodManager.numOfIngredientsHeld < FoodManager.carryCapacity 
	&& FoodManager.hasMeat == false){
		if (obj_Player.key_pickUp){
			FoodManager.hasMeat = true;
			FoodManager.numOfIngredientsHeld++;
		}
	}
}	
