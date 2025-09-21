if place_meeting(x,y, Obj_player) and !instance_exists(Obj_fade){
	
	var instantiated = instance_create_depth(0, 0, -9999, Obj_fade)
	instantiated.target_x = target_x
	instantiated.target_y = target_y
	instantiated.target_room = target_room
	instantiated.facing = facing
	
}