///@desc Declare & Initialize Variables

//Basic movement variables
moveSpeed = 8; //Speed of player's movements
hsp = 0; //Horizontal movement
vsp = 0; //Vertical movement

//Cooking variables
timeToCook = 3 * room_speed; //How long it takes to "cook" ingredients into a meal
timeHaveBeenCooking = 0; //How much time the player has been "cooking" a meal
timeCooked = 0; //(timeHaveBeenCooking/timeToCook) * 100

//FoodManager variables
numHeld = 0;
capacity = 0;
playerHasMeal = false;
