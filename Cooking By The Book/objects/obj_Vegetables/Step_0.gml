///@desc Pick Up Ingredient

//Acquire ingredient if within 150 radius of ingredient, there is room for the ingredient,
//the food gun has been acquired, the ingredient is currently not being held,
//and the pick up key is pressed
if (point_distance(x, y, obj_Player.x, obj_Player.y) < 150){
	if (FoodManager.numOfIngredientsHeld < FoodManager.carryCapacity 
	&& FoodManager.hasFoodGun == true && FoodManager.hasVegetables == false){
		if (obj_Player.key_pickUp){
			FoodManager.hasVegetables = true;
			FoodManager.numOfIngredientsHeld++;
		}
	}
}	
