//define variables
xspeed = 0
yspeed = 0

move_speed = 2
walk_speed = 2.4
run_speed = 4

facing_direction = 2

party_follow = false

//load direction facing
ini_open("Inland_Empire.ini")
facing_direction = ini_read_real("Save1", "facing", 2)
if facing_direction = 2{
	sprite_index = 	Spr_kris_L_wd
}
if facing_direction = 3{
	sprite_index = 	Spr_kris_L_wu
}
if facing_direction = 1{
	sprite_index = 	Spr_kris_L_wl
}
if facing_direction = 0{
	sprite_index = 	Spr_kris_L_wr
}
ini_close()

//store past positions for party
follow_points = 100
for (follow_pos = follow_points -1; follow_pos >= 0; follow_pos--){
	player_x[follow_pos] = x 
	player_y[follow_pos] = y 
	
	past_facing[follow_pos] = sprite_index
}