/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67628888
/// @DnDArgument : "code" "///@description Key check variables$(13_10)$(13_10)key_left = keyboard_check(vk_left);$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_jump = keyboard_check(vk_up);$(13_10)"
///@description Key check variables

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_up);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3ABC3301
/// @DnDArgument : "key" "vk_left"
/// @DnDArgument : "not" "1"
var l3ABC3301_0;
l3ABC3301_0 = keyboard_check(vk_left);
if (!l3ABC3301_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5ABB815E
	/// @DnDParent : 3ABC3301
	/// @DnDArgument : "key" "vk_right"
	/// @DnDArgument : "not" "1"
	var l5ABB815E_0;
	l5ABB815E_0 = keyboard_check(vk_right);
	if (!l5ABB815E_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 51712DCF
		/// @DnDParent : 5ABB815E
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_match_idle"
		/// @DnDSaveInfo : "spriteind" "s_match_idle"
		sprite_index = s_match_idle;
		image_index += 0;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40A16B37
/// @DnDArgument : "code" "///@description Movement$(13_10)$(13_10)var move = key_right - key_left;$(13_10)hsp = move * runsp;$(13_10)"
///@description Movement

var move = key_right - key_left;
hsp = move * runsp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 053E11E2
/// @DnDArgument : "code" "///@description Jump$(13_10)$(13_10)vsp = vsp + grv;$(13_10)if place_meeting(x, y+1, o_ground) && key_jump = true {$(13_10)	vsp = -7$(13_10)}$(13_10)$(13_10)if key_jump$(13_10){$(13_10)	sprite_index = s_match_jump;$(13_10)}"
///@description Jump

vsp = vsp + grv;
if place_meeting(x, y+1, o_ground) && key_jump = true {
	vsp = -7
}

if key_jump
{
	sprite_index = s_match_jump;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 700AD6F6
/// @DnDArgument : "code" "/// @description vertical collision$(13_10)$(13_10)if place_meeting(x,y+vsp,o_ground) {$(13_10)	while (!place_meeting(x,y+sign(vsp), o_ground)) {$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)else if place_meeting(x,y+vsp,o_wall) {$(13_10)	while (!place_meeting(x,y+sign(vsp), o_wall)) {$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)y = y + vsp;"
/// @description vertical collision

if place_meeting(x,y+vsp,o_ground) {
	while (!place_meeting(x,y+sign(vsp), o_ground)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
else if place_meeting(x,y+vsp,o_wall) {
	while (!place_meeting(x,y+sign(vsp), o_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24FBFC6A
/// @DnDArgument : "code" "/// @description horizontal collision$(13_10)$(13_10)if (place_meeting(x+hsp, y, o_wall)) $(13_10){$(13_10)	while (!place_meeting(x+sign(hsp),y, o_wall)) $(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)if (place_meeting(x+hsp, y, o_ground)) $(13_10){$(13_10)	while (!place_meeting(x+sign(hsp),y, o_ground)) $(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)x = x + hsp;"
/// @description horizontal collision

if (place_meeting(x+hsp, y, o_wall)) 
{
	while (!place_meeting(x+sign(hsp),y, o_wall)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x+hsp, y, o_ground)) 
{
	while (!place_meeting(x+sign(hsp),y, o_ground)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 17F269D8
/// @DnDArgument : "code" "/// @description interaction ennemie$(13_10)$(13_10)$(13_10)///if (place_meeting(x,y+1,o_chewinggum)) {$(13_10)	///vsp = -4; }$(13_10)	$(13_10)if (place_meeting(x-1,y,o_chewinggum)) {$(13_10)	hp -= 1; }	$(13_10)	$(13_10)if (place_meeting(x-1,y,o_mouche)) {$(13_10)	hp -= 1; }	$(13_10)	$(13_10)if (place_meeting(x-1,y,o_flaque)) {$(13_10)	hp -= 1; }$(13_10)	$(13_10)if (place_meeting(x-1,y,o_goutte)) {$(13_10)	hp -= 1; }$(13_10)	$(13_10)if (place_meeting(x-1,y,o_vent)) {$(13_10)	hp -= 1; }$(13_10)$(13_10)$(13_10)"
/// @description interaction ennemie


///if (place_meeting(x,y+1,o_chewinggum)) {
	///vsp = -4; }
	
if (place_meeting(x-1,y,o_chewinggum)) {
	hp -= 1; }	
	
if (place_meeting(x-1,y,o_mouche)) {
	hp -= 1; }	
	
if (place_meeting(x-1,y,o_flaque)) {
	hp -= 1; }
	
if (place_meeting(x-1,y,o_goutte)) {
	hp -= 1; }
	
if (place_meeting(x-1,y,o_vent)) {
	hp -= 1; }