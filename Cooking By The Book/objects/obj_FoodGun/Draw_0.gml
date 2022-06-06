///@desc Draw Pick Up Prompt

//Draw self
draw_self();

//Draw pick up prompt if within 150 radius of gun and the gun is currently not being held
if (point_distance(x, y, obj_Player.x, obj_Player.y) < 150){
	if (FoodManager.hasFoodGun == false){
		draw_sprite_ext(spr_InteractControls, 0, x, y - 100, 6.5, 6.5, 0, c_white, 0.7);
	}
}	
