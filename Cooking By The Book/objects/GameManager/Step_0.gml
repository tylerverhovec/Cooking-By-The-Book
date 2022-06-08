///@desc Manage The Game

//Escape function
key_escape = keyboard_check_released(vk_escape);

//End the game
if (key_escape)
{
	game_end();
}
