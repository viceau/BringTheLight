/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0CB3793F
/// @DnDArgument : "code" "/// @description horizontal collision$(13_10)$(13_10)if (place_meeting(x+hsp, y, o_wall)) $(13_10){$(13_10)	while (!place_meeting(x+sign(hsp),y, o_wall)) $(13_10)	{$(13_10)		x = x + sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)x = x + hsp;"
/// @description horizontal collision

if (place_meeting(x+hsp, y, o_wall)) 
{
	while (!place_meeting(x+sign(hsp),y, o_wall)) 
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 464B15E1
/// @DnDArgument : "code" "/// @description vertical collision$(13_10)$(13_10)$(13_10)vsp = vsp + grv;$(13_10)$(13_10)if place_meeting(x,y+vsp,o_ground) {$(13_10)	while (!place_meeting(x,y+sign(vsp), o_ground)) {$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)else if place_meeting(x,y+vsp,o_wall) {$(13_10)	while (!place_meeting(x,y+sign(vsp), o_wall)) {$(13_10)		y = y + sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)$(13_10)y = y + vsp;$(13_10)"
/// @description vertical collision


vsp = vsp + grv;

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