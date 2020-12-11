/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0448C5E7
/// @DnDArgument : "code" "/// @description Death$(13_10)if hp <= 0 {$(13_10)	instance_destroy();$(13_10)}"
/// @description Death
if hp <= 0 {
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C1E04F3
/// @DnDArgument : "code" "///@description Movement$(13_10)$(13_10)vsp = vsp + grv;$(13_10)"
///@description Movement

vsp = vsp + grv;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55386117
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
/// @DnDHash : 6FA89AB9
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
/// @DnDHash : 6367486B
/// @DnDArgument : "code" "/// @description interaction avec player$(13_10)/*$(13_10)if (place_meeting(x,y,o_match_idle)) {$(13_10)	if (o_match_idle.y < y-1) {$(13_10)		with (o_match_idle) vsp = -7;$(13_10)		hp =- 1;$(13_10)	}$(13_10)	else {$(13_10)		o_match_idle.hp = o_match_idle.hp - 1 ;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)"
/// @description interaction avec player
/*
if (place_meeting(x,y,o_match_idle)) {
	if (o_match_idle.y < y-1) {
		with (o_match_idle) vsp = -7;
		hp =- 1;
	}
	else {
		o_match_idle.hp = o_match_idle.hp - 1 ;
	}
}


/**/