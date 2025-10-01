//start save
ini_open("Inland_Empire.ini")
if(image_index = 0 and keyboard_check_pressed(ord("Z"))){

	room_goto(global.start_room)
	var instantiated = instance_create_layer(global.start_x, global.start_y, "Player", Obj_player_L)
	global.new_game = false
}
if (image_index = 1 and keyboard_check(ord("Z"))){
	
	file_delete("Inland_Empire.ini")
	game_restart()
	
}
ini_close()