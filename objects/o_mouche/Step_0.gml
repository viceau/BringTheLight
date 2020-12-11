/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 415F5AF3
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
/// @DnDHash : 5436E575
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

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49DB5B23
/// @DnDArgument : "code" "y = y - fly_spd;$(13_10)$(13_10)if(y<20)$(13_10)	{$(13_10)		instance_destroy();$(13_10)	}$(13_10)	"
y = y - fly_spd;

if(y<20)
	{
		instance_destroy();
	}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A7DC1CE
/// @DnDArgument : "code" "/// @description death$(13_10)$(13_10)if (hp <= 0) $(13_10) {$(13_10)	///instance_create_layer(x,y,"trap",o_trap_death);$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)"
/// @description death

if (hp <= 0) 
 {
	///instance_create_layer(x,y,"trap",o_trap_death);
	instance_destroy();
}