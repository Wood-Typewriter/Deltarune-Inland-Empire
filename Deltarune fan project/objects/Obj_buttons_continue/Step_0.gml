// slide animation (not currently used)
// if(x < 10){

	// x += 1

//}

//anti shake if animated
x = round(x);
y = round(y);


//menu 1 start
if menu = 1{
	//start save
	if(selected = 0 and global.selectbuttonpressed){

		room_goto(global.start_room)
		var instantiated = instance_create_layer(global.start_x, global.start_y, "Player", Obj_player_L)
		global.new_game = false	
	}
	// New Game
	if selected = 1 and global.selectbuttonpressed{
		file_delete("Inland_Empire.ini")
		game_restart()
	}
	//settings
	if selected = 2 and global.selectbuttonpressed{
		menu = 2
		selected = 0
	}
}
//menu 2 setting
if menu = 2{
	//controls
	if selected = 1 and global.selectbuttonpressed{
		menu = 3
		selected = 0
		timer = 1
	}
	//cancel 
	if keyboard_check_pressed(global.cancelbutton){
		menu = 1
		selected = 0
	}
}
//menu 3 controls
if menu = 3{
	if timer <= 0 {
		if selected = 0 and global.selectbuttonpressed{
			control = 0
			menu = 4
			selected = 0
			letter = Obj_title.selectkey
			timer2 = 1
		}
	}
	timer--
	if selected = 1 and global.selectbuttonpressed{
		control = 1
		menu = 4
		selected = 0
		letter = Obj_title.cancelkey
		timer2 = 1
	}
	if selected = 2 and global.selectbuttonpressed{
		control = 2
		menu = 4
		selected = 0
		letter = Obj_title.sprintkey
		timer2 = 1
	}
	if selected = 3 and global.selectbuttonpressed{
		control = 3
		menu = 4
		selected = 0
		letter = Obj_title.menukey
		timer2 = 1
	}
	if selected = 4 and global.selectbuttonpressed{
		control = 4
		menu = 4
		selected = 0
		letter = Obj_title.upkey
		timer2 = 1
	}
	if selected = 5 and global.selectbuttonpressed{
		control = 5
		menu = 4
		selected = 0
		letter = Obj_title.downkey
		timer2 = 1
	}
	if selected = 6 and global.selectbuttonpressed{
		control = 6
		menu = 4
		selected = 0
		letter = Obj_title.leftkey
		timer2 = 1
	}
	if selected = 7 and global.selectbuttonpressed{
		control = 7
		menu = 4
		selected = 0
		letter = Obj_title.rightkey
		timer2 = 1
	}
	if keyboard_check_pressed(global.cancelbutton){
		menu = 2
		selected = 0
	}
}
// menu 4 key select
if menu = 4 and timer2 <= 0 {
	if selected = 0 and global.selectbuttonpressed{
		letter = "A"
	}
	if selected = 1 and global.selectbuttonpressed{
		letter = "B"
	}
	if selected = 2 and global.selectbuttonpressed{
		letter = "C"
	}
	if selected = 3 and global.selectbuttonpressed{
		letter = "D"
	}
	if selected = 4 and global.selectbuttonpressed{
		letter = "E"
	}
	if selected = 5 and global.selectbuttonpressed{
		letter = "F"
	}
	if selected = 6 and global.selectbuttonpressed{
		letter = "G"
	}
	if selected = 7 and global.selectbuttonpressed{
		letter = "H"
	}
	if selected = 8 and global.selectbuttonpressed{
		letter = "I"
	}
	if selected = 9 and global.selectbuttonpressed{
		letter = "J"
	}
	if selected = 10 and global.selectbuttonpressed{
		letter = "K"
	}
	if selected = 11 and global.selectbuttonpressed{
		letter = "L"
	}
	if selected = 12 and global.selectbuttonpressed{
		letter = "M"
	}
	if selected = 13 and global.selectbuttonpressed{
		letter = "N"
	}
	if selected = 14 and global.selectbuttonpressed{
		letter = "O"
	}
	if selected = 15 and global.selectbuttonpressed{
		letter = "P"
	}
	if selected = 16 and global.selectbuttonpressed{
		letter = "Q"
	}
	if selected = 17 and global.selectbuttonpressed{
		letter = "R"
	}
	if selected = 18 and global.selectbuttonpressed{
		letter = "S"
	}
	if selected = 19 and global.selectbuttonpressed{
		letter = "T"
	}
	if selected = 20 and global.selectbuttonpressed{
		letter = "U"
	}
	if selected = 21 and global.selectbuttonpressed{
		letter = "V"
	}
	if selected = 22 and global.selectbuttonpressed{
		letter = "W"
	}
	if selected = 23 and global.selectbuttonpressed{
		letter = "X"
	}
	if selected = 24 and global.selectbuttonpressed{
		letter = "Y"
	}
	if selected = 25 and global.selectbuttonpressed{
		letter = "Z"
	}
	if control = 0{
		ini_open("controls.ini")
		ini_write_string("Save", "Select", letter)
	}
	if control = 1{
		ini_open("controls.ini")
		ini_write_string("Save", "Cancel", letter)
	}
	if control = 2{
		ini_open("controls.ini")
		ini_write_string("Save", "Sprint", letter)
	}
	if control = 3{
		ini_open("controls.ini")
		ini_write_string("Save", "Menu", letter)
	}
	if control = 4{
		ini_open("controls.ini")
		ini_write_string("Save", "Up", letter)
	}
	if control = 5{
		ini_open("controls.ini")
		ini_write_string("Save", "Down", letter)
	}
	if control = 6{
		ini_open("controls.ini")
		ini_write_string("Save", "Left", letter)
	}
	if control = 7{
		ini_open("controls.ini")
		ini_write_string("Save", "Right", letter)
	}
	Scr_update_controls()
	if keyboard_check_pressed(global.cancelbutton){
		menu = 3
		selected = 0
	}
}

if menu = 4{
	timer2 --
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
		selected = 3
	}
	if selected > 3{
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