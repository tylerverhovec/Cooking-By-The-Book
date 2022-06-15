///@desc Control Gun's Actions

//Changes value if player is pressing the left mouse button
mouse_shoot = mouse_check_button(mb_left);

//Rotate gun towards cursor's position
direction = point_direction(x, y, mouse_x, mouse_y);

//Connect gun to player
//Held on left side if gun rotation between 90 and 270 degrees
if (holdingLeft){
	
	if (direction < 80 || direction > 280){
		holdingLeft = false;
		holdingRight = true;
	}
	
	with (obj_Player){
		other.x = x - (sprite_width / 2);
		other.y = y;
	}
	
	image_angle = clamp(direction, 90, 270);
	
}
else if (holdingRight){
	
	if (direction > 100 && direction < 260){
		holdingRight = false;
		holdingLeft = true;
	}

	with (obj_Player){
		other.x = x + (sprite_width / 2);
		other.y = y;
	}
	
	if (direction >= 0 && direction < 100){
		image_angle = clamp(direction, 0, 90);
	}
	else if (direction > 280 && direction < 360){
		image_angle = clamp(direction, 270, 360);
	}
	
}	
