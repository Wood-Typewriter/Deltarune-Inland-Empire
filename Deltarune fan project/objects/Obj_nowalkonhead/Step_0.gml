if instance_exists(Obj_player_L) and global.party_exists = true and instance_exists(global.party_member_1) and instance_exists(global.party_member_2){
    
	if(global.party_member_1.y < global.party_member_2.y and global.party_member_2.y < Obj_player_L.y){
    	global.party_member_1.depth = Obj_player_L.depth +2
    	global.party_member_2.depth = Obj_player_L.depth +1
	}
	if(global.party_member_2.y < global.party_member_1.y and global.party_member_1.y < Obj_player_L.y){
    	global.party_member_1.depth = Obj_player_L.depth +1
    	global.party_member_2.depth = Obj_player_L.depth +2
	}
	if(global.party_member_2.y < Obj_player_L.y and Obj_player_L.y < global.party_member_1.y){
    	global.party_member_2.depth = Obj_player_L.depth +1
    	global.party_member_1.depth = Obj_player_L.depth -1
	}
	if(global.party_member_1.y < Obj_player_L.y and Obj_player_L.y < global.party_member_2.y){
    	global.party_member_1.depth = Obj_player_L.depth +1;
    	global.party_member_2.depth = Obj_player_L.depth -1;
	}
	if(Obj_player_L.y < global.party_member_2.y and global.party_member_2.y < global.party_member_1.y){
    	global.party_member_1.depth = Obj_player_L.depth -2;
    	global.party_member_2.depth = Obj_player_L.depth -1;
	}
	if(Obj_player_L.y < global.party_member_1.y and global.party_member_1.y < global.party_member_2.y){
    	global.party_member_1.depth = Obj_player_L.depth -1;
    	global.party_member_2.depth = Obj_player_L.depth -2;
	}
    
}
