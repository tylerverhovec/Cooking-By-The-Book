///@desc Pick Up Ingredient

var numHeld = FoodManager.numOfIngredientsHeld;
var capacity = FoodManager.carryCapacity;

//Acquire ingredient if within 150 radius of ingredient, there is room for the ingredient,
//the food gun has been acquired, the ingredient is currently not being held,
//and the pick up key is pressed
if (point_distance(x, y, obj_Player.x, obj_Player.y) < 150 
&& numHeld < capacity
&& FoodManager.hasFoodGun == true 
&& FoodManager.hasCheese == false 
&& obj_Player.key_pickUp){
	
	//Add ingredient to the array that stores the ingredients the player
	//is currently holding
	FoodManager.hasCheese = true;
	FoodManager.currentIngredients[numHeld] = 2; //2 = cheese
	FoodManager.numOfIngredientsHeld++;
	
}		
