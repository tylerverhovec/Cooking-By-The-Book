///@desc Draw Pick Up Prompt

var numHeld = FoodManager.numOfIngredientsHeld;
var capacity = FoodManager.carryCapacity;

//Draw self
draw_self();

//Draw pick up prompt if within 150 radius of ingredient, there is room for the ingredient,
//the food gun has been acquired, and the ingredient is currently not being held
if (point_distance(x, y, obj_Player.x, obj_Player.y) < 150
&& numHeld < capacity
&& FoodManager.hasFoodGun == true 
&& FoodManager.hasBread == false){
	
	draw_sprite_ext(spr_InteractControls, 0, x, y - 100, 6.5, 6.5, 0, c_white, 0.7);
	
}	
