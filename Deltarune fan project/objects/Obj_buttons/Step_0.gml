// slide animation (not currently used)
// if(x < 10){

	// x += 1

//}

//anti shake if animated
x = round(x);
y = round(y);


//menu1
if menu = 1{
	//start save
	if(selected = 0 and global.selectbuttonpressed){

		room_goto(global.start_room)
		var instantiated = instance_create_layer(global.start_x, global.start_y, "Player", Obj_player_L)
		global.new_game = false	
	}
	//settings
	if selected = 1 and global.selectbuttonpressed{
		menu = 2
		selected = 0
	}
}
