/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0E39EBF4
/// @DnDArgument : "key" "vk_left"
var l0E39EBF4_0;
l0E39EBF4_0 = keyboard_check(vk_left);
if (l0E39EBF4_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 792616FE
	/// @DnDParent : 0E39EBF4
	/// @DnDArgument : "expr" "hsp-walk_spd"
	/// @DnDArgument : "var" "hsp"
	hsp = hsp-walk_spd;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 07DCCB21
/// @DnDArgument : "expr" "hsp*drag"
/// @DnDArgument : "var" "hsp"
hsp = hsp*drag;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26BCFF46
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += hsp;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59115464
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "not" "1"
if(!(hsp == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17CD32A3
	/// @DnDParent : 59115464
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "op" "2"
	if(hsp > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CEACBD3
		/// @DnDParent : 17CD32A3
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4658345F
	/// @DnDParent : 59115464
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D2813C9
		/// @DnDParent : 4658345F
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;
	}
}