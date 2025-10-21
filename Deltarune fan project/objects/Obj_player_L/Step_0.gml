//controls
var up_key = global.upbuttonpressed
var down_key = global.downbuttonpressed
var left_key = global.leftbuttonpressed
var right_key = global.rightbuttonpressed

//movement
if keyboard_check(vk_shift) or keyboard_check(ord("X")){
	move_speed = run_speed
} else{
	move_speed = walk_speed
}

xspeed = (right_key - left_key) * move_speed
yspeed = (down_key - up_key) * move_speed

//collision

if place_meeting(x + xspeed, y, Obj_collider){

	xspeed = 0
	
}

if place_meeting(x, y + yspeed, Obj_collider){
	
	yspeed = 0
	
}

x += xspeed
y += yspeed

//animation
if xspeed > 0{
	sprite_index = Spr_kris_L_wr
} else if xspeed < 0 {
	sprite_index = Spr_kris_L_wl
} else if yspeed > 0{
	sprite_index = Spr_kris_L_wd
} else if yspeed < 0 {
	sprite_index = Spr_kris_L_wu
}

if xspeed !=0 or yspeed !=0 {
	image_speed = 1
} else{
	image_speed = 0
	image_index = 0
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

//keeping direction of sprite
if(sprite_index =Spr_kris_L_wd){
	facing_direction = 2
}
if(sprite_index =Spr_kris_L_wu){
	facing_direction = 3
}
if(sprite_index =Spr_kris_L_wl){
	facing_direction = 1
}
if(sprite_index =Spr_kris_L_wr){
	facing_direction = 0
}

//save direction facing
if place_meeting(x, y, Obj_save){

	if sprite_index	= Spr_kris_D_wd{
		facing_direction = 2
	}	
	if sprite_index	= Spr_kris_D_wu{
		facing_direction = 3
	}
	if sprite_index	= Spr_kris_D_wl{
		facing_direction = 1
	}
	if sprite_index	= Spr_kris_D_wr{
		facing_direction = 0
	}	
	
}

//update postion for party_follow

	
	if (x != xprevious or y != yprevious) and !instance_exists(Obj_fade){
		
		for(follow_pos = follow_points - 1; follow_pos > 0; follow_pos--){
			
		player_x[follow_pos] = player_x[follow_pos-1]
		player_y[follow_pos] = player_y[follow_pos-1] 
		
		past_facing[follow_pos] = past_facing[follow_pos-1]
		
		}
		player_x[0] = x
		player_y[0] = y
		past_facing[0] = sprite_index
		
	}
	
	