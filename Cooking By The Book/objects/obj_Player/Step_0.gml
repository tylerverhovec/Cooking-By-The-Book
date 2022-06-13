///@desc Control Player Actions

//Resets keys every step incase the player stops moving
key_up = 0;
key_down = 0;
key_left = 0;
key_right = 0;

//Changes the key values if the player is pressing a key/mouse input
key_up = -keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_pickUp = keyboard_check_pressed(ord("E"));
mouse_cook = mouse_check_button(mb_right);

//Process potential movement
hsp = (key_left + key_right) * moveSpeed;
vsp = (key_up + key_down) * moveSpeed;

//Collide and Move
if (place_meeting(x+hsp, y, obj_blocker))
{
	while (abs(hsp) > 0.1)
	{
		hsp *= 0.5;
		if (!place_meeting(x + hsp,y, obj_blocker)) x += hsp;
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_blocker))
{
	while (abs(vsp) > 0.1)
	{
		vsp *= 0.5;
		if (!place_meeting(x,y + vsp, obj_blocker)) y += vsp;
	}
	vsp = 0;
}
y += vsp;

//Manage time needed to cook
//Raise time player has been cooking if right mouse button is down
//Reset timer if button is let go
if (numHeld == capacity && !playerHasMeal && mouse_cook){
	timeHaveBeenCooking++;
}
else{
	timeHaveBeenCooking = 0;
}

//If a meal has been cooked, notify the FoodManager
if ((timeHaveBeenCooking / room_speed) >= (timeToCook / room_speed)){
	FoodManager.hasMeal = true;
}	
