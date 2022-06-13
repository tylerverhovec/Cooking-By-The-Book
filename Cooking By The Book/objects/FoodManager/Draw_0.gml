///@desc Display Held Ingredients

//If player has the food gun, doesn't have a meal cooked, and isn't in the hub room,
//draw held ingredients
if (hasFoodGun == true && hasMeal == false && room != rm_HubRoom){
		
	for (var i = 0; i < carryCapacity; i++){
		
		//Get position of sprite
		var spritePosXStart = -48; //X position of first sprite, add/subtract multiples 
								   //of 32 if needs to be changed
		var spritePosX = obj_Player.x + ((i * 32) + spritePosXStart); //Position of sprite x
		var spritePosY = obj_Player.y + 64; //Position of sprite y
		
		//Draw corresponding sprite based on ingredient in current index of array
		switch (currentIngredients[i]){
			
			//Basic empty food slot
			case 0:
				draw_sprite_ext(spr_FoodSlot, 0, spritePosX, spritePosY, 0.5, 0.5, 0, c_white, 0.8);
				break;
			
			//Bread
			case 1:
				draw_sprite_ext(spr_Bread, 0, spritePosX, spritePosY, 0.5, 0.5, 0, c_white, 0.8);
				break;
			
			//Cheese
			case 2:
				draw_sprite_ext(spr_Cheese, 0, spritePosX, spritePosY, 0.5, 0.5, 0, c_white, 0.8);
				break;
			
			//Meat
			case 3:
				draw_sprite_ext(spr_Meat, 0, spritePosX, spritePosY, 0.5, 0.5, 0, c_white, 0.8);
				break;
			
			//Vegetables
			case 4:
				draw_sprite_ext(spr_Vegetables, 0, spritePosX, spritePosY, 0.5, 0.5, 0, c_white, 0.8);
				break;
			
			default:
				draw_sprite_ext(spr_FoodSlot, 0, spritePosX, spritePosY, 0.5, 0.5, 0, c_white, 0.8);
			
		}	
		
	}	
	
}

//If the player has a meal crafted and isn't in the hub room, draw the corresponding meal
else if (hasMeal == true && room != rm_HubRoom){
	
	//Get position of sprite
	var spritePosX = obj_Player.x; //Position of sprite x
	var spritePosY = obj_Player.y + 64; //Position of sprite y
	
	//Draw corresponding sprite based on currently held meal
	switch (meal){
		
		//Burger
		case 0:
			draw_sprite_ext(spr_Burger, 0, spritePosX, spritePosY, 1, 1, 0, c_white, 0.8);
			break;
		
	}	
	
}	
