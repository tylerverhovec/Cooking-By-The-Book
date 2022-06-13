///@desc Manage Food/Ingredients Player Is Carrying

//If the player cooked a meal, determine which one it is
if (hasMeal){
	
	if (hasBread && hasCheese && hasMeat && hasVegetables){
		meal = 0; //0 = burger
		hasBread = false;
		hasCheese = false;
		hasMeat = false;
		hasVegetables = false;
	}
	
	numOfIngredientsHeld = 0;
	currentIngredients = [0, 0, 0, 0];
	
}	
