///@desc Camera Actions

x = clamp(x, following.x - hBorder, following.x + hBorder);
y = clamp(y, following.y - vBorder, following.y + vBorder);

//escape function
key_escape = keyboard_check_released(vk_escape);

if (key_escape)
{
	game_end();
}
