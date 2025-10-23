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
//menu 2
if menu = 2{
	//controls
	if selected = 1 and global.selectbuttonpressed{
		menu = 3
		selected = 0
		timer = 1
	}
	//canel 
	if keyboard_check_pressed(global.cancelbutton){
		menu = 1
		selected = 0
	}
}

//controls
if global.downbuttonpressed1{
	selected++
}
if global.upbuttonpressed1{
	selected--
}
if menu = 1{ // first startup
	if selected < 0 {
		selected = 2
	}
	if selected > 2{
		selected = 0
	}
}
if menu = 2{ // settings
	if selected < 0 {
		selected = 1
	}
	if selected > 1{
		selected = 0
	}
}
if menu = 3{ //
	if selected < 0 {
		selected = 7
	}
	if selected > 7{
		selected = 0
	}
}
if menu = 4{ //
	if selected < 0 {
		selected = 25
	}
	if selected > 25{
		selected = 0
	}
}