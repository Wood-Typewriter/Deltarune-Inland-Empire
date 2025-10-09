if(place_meeting(x, y, Obj_player_L)){

	ini_open("Inland_Empire.ini")
	ini_write_real("Save1", "room", room_to_save)
	ini_write_real("Save1", "x", Obj_player_L.x)
	ini_write_real("Save1", "y", Obj_player_L.y)
	ini_write_real("Save1", "facing", Obj_player_L.facing_direction)
	
	if global.party_exists = true{
		
		ini_write_string("Save1", "Party Exists", global.party_exists)
	
		if global.party_member_1 = Obj_Susie_L{
			ini_write_real("Save1", "Party1", global.p0)
		}
		if global.party_member_2 = Obj_Ralsie{
			ini_write_real("Save1", "Party2", global.p1)
		}
		if global.party_member_1 = Obj_Susie_D{
			ini_write_real("Save1", "Party1", global.p2)
		}
		
	}
	ini_close()
	
}