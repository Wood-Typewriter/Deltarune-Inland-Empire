// animate
if inparty = true{
	sprite_index = Spr_susie_L_wd
} else if inparty = true{
	sprite_index = Spr_susie_L_wl
} else if inparty = true{
	sprite_index = Spr_susie_L_wr
} else if inparty = true{
	sprite_index = Spr_susie_L_wu
}

//anti shake code
x[0] = round(x[0.1]);
y[0] = round(y[0.1]);

// party follow
if inparty = true and Obj_player_L.follow_points > 0{
		
	npc_mode = false
	
	if global.entered_new_room = true{
	
		if global.new_room_facing = Spr_kris_L_wd{
			sprite_index = Spr_susie_L_wd
			new_room_facing = sprite_index
		}
		if global.new_room_facing = Spr_kris_L_wl{
			sprite_index = Spr_susie_L_wl
			new_room_facing = sprite_index
		}
		if global.new_room_facing = Spr_kris_L_wr{
			sprite_index = Spr_susie_L_wr
			new_room_facing = sprite_index
		}
		if global.new_room_facing = Spr_kris_L_wu{
			sprite_index = Spr_susie_L_wu
			new_room_facing = sprite_index
		}
		
		if sprite_index != new_room_facing{
			global.entered_new_room = false
		}
	}
	
	//if global.party_member_2 = Obj_Ralsie{
	switch(Obj_player_L.past_facing[global.party_member_1_follow_distance]){
		
		case Spr_kris_L_wd: sprite_index = Spr_susie_L_wd; break;
		case Spr_kris_L_wl: sprite_index = Spr_susie_L_wl; break;
		case Spr_kris_L_wr: sprite_index = Spr_susie_L_wr; break;
		case Spr_kris_L_wu: sprite_index = Spr_susie_L_wu; break;
	}
	
	if Obj_player_L.player_x[global.party_member_1_follow_distance] != 0{
		x = Obj_player_L.player_x[global.party_member_1_follow_distance]
		y = Obj_player_L.player_y[global.party_member_1_follow_distance]
		
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
	// } //(for obj_susie_L if statement)
if inparty = false{

	image_speed = 0
	npc_mode = true

}