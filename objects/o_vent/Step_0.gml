/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C9C9F32
/// @DnDArgument : "code" "// deplacements$(13_10)$(13_10)x = x - wind_spd;$(13_10)$(13_10)if (x <= 30)$(13_10){$(13_10)	instance_destroy();$(13_10)}"
// deplacements

x = x - wind_spd;

if (x <= 30)
{
	instance_destroy();
}