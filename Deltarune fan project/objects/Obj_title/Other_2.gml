//variable key
global.start_room = rm_Kris_Asrial_room
global.start_x = 160
global.start_y = 120

global.new_game = false
//global.title_buttons = false

//room Ids, add more as i make rooms
global.rm0 = 0
global.rm1 = 1
global.rm2 = 2

if(file_exists("Inland_Empire.ini")){
	
	instance_create_depth(160, 180, 100, Obj_buttons_continue)
	
	ini_open("Inland_Empire.ini")
	global.start_room = ini_read_string("Save1", "room", rm_Kris_Asrial_room)
	global.start_x = ini_read_real("Save1", "x", 160)
	global.start_y = ini_read_real("Save1", "y", 120)
	ini_close()

} else{
	
	instance_create_depth(160, 180, 100, Obj_buttons)
	
}
//repeat next section for every new save star
if global.start_room = 0 {
	
	global.start_room = rm_dev_test_room
	
}
if global.start_room = 1 {
	
	global.start_room = rm_Kris_Asrial_room
	
}
if global.start_room = 2 {
	
	global.start_room = rm_Main_room
	
}