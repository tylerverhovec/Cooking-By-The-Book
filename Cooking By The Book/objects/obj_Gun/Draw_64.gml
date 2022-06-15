/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4F734885
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
var l4F734885_0=($FF0000FF >> 24);
draw_set_alpha(l4F734885_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0A61D6DD
/// @DnDArgument : "caption" ""Weapon Angle: ""
/// @DnDArgument : "var" "direction"
draw_text(0, 0, string("Weapon Angle: ") + string(direction));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 72D79510
/// @DnDArgument : "y" "16"
/// @DnDArgument : "caption" ""Holding Left: ""
/// @DnDArgument : "var" "holdingLeft"
draw_text(0, 16, string("Holding Left: ") + string(holdingLeft));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 58839EDA
/// @DnDArgument : "y" "32"
/// @DnDArgument : "caption" ""Holding Right: ""
/// @DnDArgument : "var" "holdingRight"
draw_text(0, 32, string("Holding Right: ") + string(holdingRight));