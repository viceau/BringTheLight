/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01DD6B21
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_down))$(13_10){ $(13_10)	menu += 1; $(13_10)	} else if (keyboard_check_pressed(vk_up))$(13_10){ $(13_10)		menu -= 1; $(13_10)}$(13_10)$(13_10)if ( menu > 2) $(13_10){$(13_10)	menu = 0; $(13_10)} else if ( menu < 0 )$(13_10){$(13_10)	menu = 2;$(13_10)}	$(13_10)$(13_10)if (menu == 1)$(13_10){$(13_10)	image_index = 2;$(13_10)	if (keyboard_check(vk_enter))$(13_10)	{ $(13_10)		room_goto(1)$(13_10)	}	$(13_10)}$(13_10)$(13_10)if (menu == 0)$(13_10){$(13_10)	image_index = 1;$(13_10)	if (keyboard_check(vk_enter))$(13_10)	{ $(13_10)		room_goto(3)$(13_10)	}	$(13_10)}	$(13_10)$(13_10)switch(menu)$(13_10){ $(13_10)	case 0: $(13_10)	image_index = 0;$(13_10)	break;$(13_10)	$(13_10)	case 1: $(13_10)	image_index = 1;$(13_10)	break;$(13_10)	$(13_10)	case 2: $(13_10)	image_index = 2;$(13_10)	break;$(13_10)}"
if (keyboard_check_pressed(vk_down))
{ 
	menu += 1; 
	} else if (keyboard_check_pressed(vk_up))
{ 
		menu -= 1; 
}

if ( menu > 2) 
{
	menu = 0; 
} else if ( menu < 0 )
{
	menu = 2;
}	

if (menu == 1)
{
	image_index = 2;
	if (keyboard_check(vk_enter))
	{ 
		room_goto(1)
	}	
}

if (menu == 0)
{
	image_index = 1;
	if (keyboard_check(vk_enter))
	{ 
		room_goto(3)
	}	
}	

switch(menu)
{ 
	case 0: 
	image_index = 0;
	break;
	
	case 1: 
	image_index = 1;
	break;
	
	case 2: 
	image_index = 2;
	break;
}