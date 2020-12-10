/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7755D8A3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_wall"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "o_wall"
var l7755D8A3_0 = instance_place(x + 0, y + 0, o_wall);
if (!(l7755D8A3_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 733FD451
	/// @DnDParent : 7755D8A3
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5B3637C4
	/// @DnDParent : 7755D8A3
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "s_match_run"
	/// @DnDSaveInfo : "spriteind" "s_match_run"
	sprite_index = s_match_run;
	image_index += 0;
}