room_goto(target_room)
Obj_player_L.x = target_x
Obj_player_L.y = target_y

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