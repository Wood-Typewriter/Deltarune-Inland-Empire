// animate
if inparty = true{
	sprite_index = Spr_ralsie_wd
} else if inparty = true{
	sprite_index = Spr_ralsie_wl
} else if inparty = true{
	sprite_index = Spr_ralsie_wr
} else if inparty = true{
	sprite_index = Spr_ralsie_wu
}

//step when move tapped
if global.upbuttonpressed1{
	image_index = 1
}
if global.downbuttonpressed1{
	image_index = 1
}
if global.leftbuttonpressed1{
	image_index = 1
}
if global.rightbuttonpressed1{
	image_index = 1
}

//anti shake code
x = round(x);
y = round(y);

// party follow
if inparty = true and Obj_player_L.follow_points > 0{
		
	npc_mode = false
	
	if global.entered_new_room = true{
	
		if global.new_room_facing = Spr_kris_L_wd{
			sprite_index = Spr_ralsie_wd
			new_room_facing = sprite_index
		}
		if global.new_room_facing = Spr_kris_L_wl{
			sprite_index = Spr_ralsie_wl
			new_room_facing = sprite_index
		}
		if global.new_room_facing = Spr_kris_L_wr{
			sprite_index = Spr_ralsie_wr
			new_room_facing = sprite_index
		}
		if global.new_room_facing = Spr_kris_L_wu{
			sprite_index = Spr_ralsie_wu
			new_room_facing = sprite_index
		}
		
		if sprite_index != new_room_facing{
			global.entered_new_room = false
		}
	}
	
	//if global.party_member_2 = Obj_Ralsie{
	switch(Obj_player_L.past_facing[global.party_member_2_follow_distance]){
		
		case Spr_kris_L_wd: sprite_index = Spr_ralsie_wd; break;
		case Spr_kris_L_wl: sprite_index = Spr_ralsie_wl; break;
		case Spr_kris_L_wr: sprite_index = Spr_ralsie_wr; break;
		case Spr_kris_L_wu: sprite_index = Spr_ralsie_wu; break;
	}

	if Obj_player_L.player_x[global.party_member_2_follow_distance] != 0{
		x = Obj_player_L.player_x[global.party_member_2_follow_distance]
		y = Obj_player_L.player_y[global.party_member_2_follow_distance]
	} else{
		if instance_exists(Obj_fade){
			x = Obj_fade.target_x
			y = Obj_fade.target_y
		}
	}

	if x != xprevious or y != yprevious{
		image_speed = 1
	} else{
		image_speed = 0
		image_index = 0
	}
}
	//} //(for obj_ralsie if statement)
if inparty = false{

	image_speed = 0
	npc_mode = true

}