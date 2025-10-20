//variable key
global.start_room = rm_Kris_Asrial_room
global.start_x = 160
global.start_y = 120

global.new_game = false

global.party_exists = false
global.entered_new_room = false

//control defaults
global.selectbutton = ord("Z")
global.cancelbutton = ord("X")
global.sprintbutton = ord("X")
global.menubutton = ord("C")
global.upbutton = ord("W")
global.downbutton = ord("S")
global.leftbutton = ord("A")
global.rightbutton = ord("D")

//update controls
Scr_update_controls()

//party ids
global.pn2 = -2 // place holder 2 (if needed)
global.pn1 = -1 // place holder 1 (if needed)
global.p0 = 0 // Susie Light world
global.p1 = 1 // Ralsie
global.p2 = 2 // Susie Dark world

//room Ids, add more as i make rooms
global.rm0 = 0
global.rm1 = 1
global.rm2 = 2
global.rm3 = 3

if(file_exists("Inland_Empire.ini")){
	
	instance_create_depth(160, 180, 100, Obj_buttons_continue)
	
	ini_open("Inland_Empire.ini")
	global.start_room = ini_read_string("Save1", "room", rm_Kris_Asrial_room)
	global.start_x = ini_read_real("Save1", "x", 160)
	global.start_y = ini_read_real("Save1", "y", 120)
	global.party_member_1 = ini_read_real("Save1", "Party1", global.p0)
	global.party_member_2 = ini_read_real("Save1", "Party2", global.p1)
	global.party_member_1_follow_distance = ini_read_real("Save1", "Party1 Distance", 40)
	global.party_member_2_follow_distance = ini_read_real("Save1", "Party2 Distance", 80)
	global.party_exists = ini_read_string("Save1", "Party Exists", "false")
	ini_close()

} else{
	
	instance_create_depth(160, 180, 100, Obj_buttons)
	
}
//repeat next section for every new save star
//room load order determins number for some reason
//remember to throw order them so save rooms are at the top so its a consistant number
//VVV ONLY FOR SAVE ROOMS VVV
if global.start_room = 0 {
	
	global.start_room = rm_dev_test_room
	
}
if global.start_room = 1 {
	
	global.start_room = rm_Kris_Asrial_room
	
}
if global.start_room = 2 {
	
	global.start_room = rm_Hall
	
}
if global.start_room = 3 {
	
	global.start_room = rm_Main_room
	
}

//party members assignment section
if global.party_exists = true{
		if global.party_member_2 = -2 {
	
		global.party_member_1 = Obj_placeholder2
	
	}
		if global.party_member_1 = -1 {
	
		global.party_member_1 = Obj_placeholder1
	
	}
	if global.party_member_1 = 0 {
	
		global.party_member_1 = Obj_Susie_L
	
	}
	if global.party_member_2 = 1 {
	
		global.party_member_2 = Obj_Ralsie
	
	}
	if global.party_member_1 = 2 {
	
		global.party_member_1 = Obj_Susie_D
	
	}
}