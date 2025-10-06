room_goto(target_room)
Obj_player_L.x = target_x
Obj_player_L.y = target_y

//party
if global.party_exists = true{

	party_warp = true
	global.entered_new_room = true
	global.new_room_facing = Obj_player_L.sprite_index
	Obj_player_L.player_x = -1
	Obj_player_L.player_y = -1
	Obj_player_L.past_facing = -1
	Obj_player_L.follow_points = 100
	
	for (Obj_player_L.follow_pos = Obj_player_L.follow_points -1; Obj_Susie_L.follow_pos >= 0; Obj_Susie_L.follow_pos--){
		
		Obj_player_L.player_x[Obj_player_L.follow_pos] = x
		Obj_player_L.player_y[Obj_player_L.follow_pos] = y
		
	}
	
	for(Obj_player_L.follow_pos = Obj_player_L.follow_points -1; Obj_player_L.follow_pos >= 0; Obj_player_L.follow_pos -= 48){
	
	Obj_player_L.past_facing[Obj_player_L.follow_pos] = Obj_player_L.sprite_index
	
	}
	
}

//facing

if facing = 0{
	Obj_player_L.sprite_index = Spr_kris_L_wr
}

if facing = 1{
	Obj_player_L.sprite_index = Spr_kris_L_wl
}

if facing = 2{
	Obj_player_L.sprite_index = Spr_kris_L_wd
}

if facing = 3{
	Obj_player_L.sprite_index = Spr_kris_L_wu
}

//fade out
image_speed = -1