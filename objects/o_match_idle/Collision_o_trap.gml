/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2AFD5CDD
/// @DnDArgument : "code" "if (vsp > 0) {$(13_10)	var height = y - other.y;$(13_10)	if (height < 0) {$(13_10)		vsp = jumpsp;$(13_10)		with(other) {$(13_10)			instance_destroy();$(13_10)		}$(13_10)	}$(13_10)}$(13_10)"
if (vsp > 0) {
	var height = y - other.y;
	if (height < 0) {
		vsp = jumpsp;
		with(other) {
			instance_destroy();
		}
	}
}