///@desc Camera Actions

//x = clamp(x, following.x - hBorder, following.x + hBorder);
//y = clamp(y, following.y - vBorder, following.y + vBorder);

var xTo, yTo;

move_towards_point(mouse_x, mouse_y, 0);
xTo = obj_Player.x + lengthdir_x(min(400, distance_to_point(mouse_x, mouse_y)), direction);
yTo = obj_Player.y + lengthdir_y(min(400, distance_to_point(mouse_x, mouse_y)), direction);

x += (xTo - x) / 25;
y += (yTo - y) / 25;


camX = -(camera_get_view_width(view_camera[0]) / 2) + x;
camY = -(camera_get_view_height(view_camera[0]) / 2) + y;

camX = clamp(camX, 0, room_width-camera_get_view_width(view_camera[0]));
camY = clamp(camY, 0, room_height-camera_get_view_height(view_camera[0]));

camera_set_view_pos(view_camera[0], camX, camY);


//escape function
key_escape = keyboard_check_released(vk_escape);

if (key_escape)
{
	game_end();
}
