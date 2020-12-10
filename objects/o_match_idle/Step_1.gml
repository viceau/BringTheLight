/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E75DC74
/// @DnDArgument : "code" "/// @description death$(13_10)$(13_10)if (hp <= 0) $(13_10) {$(13_10)	instance_create_layer(x,y,"player",o_match_death);$(13_10)	instance_destroy();$(13_10)$(13_10)}"
/// @description death

if (hp <= 0) 
 {
	instance_create_layer(x,y,"player",o_match_death);
	instance_destroy();

}