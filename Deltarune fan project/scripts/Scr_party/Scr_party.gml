function Scr_party(party_member_1, party_member_2, disband){

	if disband = false{
		
		global.party_exists = true
		
		global.party_member_1 = party_member_1
		global.party_member_2 = party_member_2
		global.party_member_1_follow_distance = 20
		global.party_member_2_follow_distance = 40
		global.party_member_1.inparty = true
		global.party_member_2.inparty = true
		
	} else{
		
		global.party_exists = false
		
		
	}

}