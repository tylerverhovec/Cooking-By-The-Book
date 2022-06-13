///@desc

//Draw character sprite
draw_self();

if (instance_exists(FoodManager)){

	//Get variable values from FoodManager
	numHeld = FoodManager.numOfIngredientsHeld;
	capacity = FoodManager.carryCapacity;
	playerHasMeal = FoodManager.hasMeal;

	//Track cooking bar variables
	cookingBarLeft = x - 48;
	cookingBarTop = y - 48;
	cookingBarRight = x + 48;
	cookingBarBottom = y - 64;
	timeCooked = (timeHaveBeenCooking/timeToCook) * 100;

	if (numHeld == capacity && !playerHasMeal && mouse_cook){
		draw_healthbar(cookingBarLeft, cookingBarTop, cookingBarRight, cookingBarBottom, 
		timeCooked, c_white, c_aqua, c_aqua, 0, false, true);
	}

}