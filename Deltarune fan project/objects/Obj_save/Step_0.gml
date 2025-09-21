if(place_meeting(x, y, Obj_player)){

	ini_open("Inland_Empire.ini")
	ini_write_real("Save1", "room", room_to_save)
	ini_write_real("Save1", "x", Obj_player.x)
	ini_write_real("Save1", "y", Obj_player.y)
	ini_write_real("Save1", "facing", Obj_player.facing_direction)
	ini_close()
	
}