/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12FFF2AE
/// @DnDArgument : "code" "///@description Key check variables$(13_10)$(13_10)key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_jump = keyboard_check(vk_up);$(13_10)"
///@description Key check variables

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_up);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3F981E34
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l3F981E34_0;
l3F981E34_0 = keyboard_check(vk_left);
if (!l3F981E34_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 371F9BDB
	/// @DnDParent : 3F981E34
	/// @DnDArgument : "key" "vk_right"
	/// @DnDArgument : "not" "1"
	var l371F9BDB_0;
	l371F9BDB_0 = keyboard_check(vk_right);
	if (!l371F9BDB_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 07FC5393
		/// @DnDParent : 371F9BDB
		/// @DnDArgument : "spriteind" "s_player_run"
		/// @DnDSaveInfo : "spriteind" "s_player_run"
		sprite_index = s_player_run;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 742BC1BB
/// @DnDArgument : "code" "///@description Movement$(13_10)$(13_10)var move = key_right - key_left;$(13_10)hsp = move * runsp;"
///@description Movement

var move = key_right - key_left;
hsp = move * runsp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0895DFA0
/// @DnDArgument : "code" "///@description Jump$(13_10)$(13_10)vsp = vsp + grv;$(13_10)if place_meeting(x, y+1, o_ground) && key_jump = true {$(13_10)	vsp = -7$(13_10)}"
///@description Jump

vsp = vsp + grv;
if place_meeting(x, y+1, o_ground) && key_jump = true {
	vsp = -7
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 543AFA2D
/// @DnDArgument : "code" "/// @description horizontal collision$(13_10)$(13_10)if place_meeting(x+hsp, y, o_wall) {$(13_10)	while (!place_meeting(x+sign(hsp),y, o_wall)) {$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)x = x + hsp;"
/// @description horizontal collision

if place_meeting(x+hsp, y, o_wall) {
	while (!place_meeting(x+sign(hsp),y, o_wall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19808A22
/// @DnDArgument : "code" "/// @description vertical collision$(13_10)$(13_10)if place_meeting(x,y+vsp,o_ground) {$(13_10)	while (!place_meeting(x,y+sign(vsp), o_ground)) {$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)y = y + vsp;"
/// @description vertical collision

if place_meeting(x,y+vsp,o_ground) {
	while (!place_meeting(x,y+sign(vsp), o_ground)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;