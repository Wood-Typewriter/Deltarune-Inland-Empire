draw_set_font(Fnt_main)
draw_set_halign(fa_center) // might change this when title is redisigned

if menu = 1{

	if selected = 0 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y - 30, "Begin Game")
	if selected = 1 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y, "Settings")
	if selected = 2 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y + 30, "Exit")
}

if menu = 2 {
		if selected = 0 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y - 30, "Volume")
		if selected = 1 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y, "Controls")
}
//gotta rework this, updated font messed this up, resize would work
if menu = 3{
	if selected = 0 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 65, y - 40, "Select - Enter/" + Obj_title.selectkey)
	if selected = 1 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 65, y - 20, "Cancel - " + Obj_title.cancelkey)
	if selected = 2 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 70, y, "Sprint - Shift/" + Obj_title.sprintkey)
	if selected = 3 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x - 65, y + 20, "Menu - " + Obj_title.menukey)
	if selected = 4 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x + 65, y - 40, "Up - Up Arrow/" + Obj_title.upkey)
	if selected = 5 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x + 65, y - 20, "Down - Down Arrow/" + Obj_title.downkey)
	if selected = 6 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x + 70, y, "Left - Left Arrow/" + Obj_title.leftkey)
	if selected = 7 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x + 65, y + 20, "Right - Right Arrow/" + Obj_title.rightkey)
	
} // change when finished title screen is finished, use fade and just overlay it on top
 if menu = 4{
	if selected = 0{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y - 60, "A")
	if selected = 1{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y - 40, "B")
	if selected = 2{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y - 20, "C")
	if selected = 3{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y, "D")
	if selected = 4{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 20, "E")
	if selected = 5{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 20, y + 40, "F")
	if selected = 6{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 10, y - 60, "G")
	if selected = 7{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 10, y - 40, "H")
	if selected = 8{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 10, y - 20, "I")
	if selected = 9{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 10, y, "J")
	if selected = 10{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x - 10, y + 20, "K")
	if selected = 11{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x, y - 60, "L")
	if selected = 12{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x, y - 40, "M")
	if selected = 13{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x, y - 20, "N")
	if selected = 14{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x, y, "O")
	if selected = 15{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x, y + 20, "P")
	if selected = 16{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 10, y - 60, "Q")
	if selected = 17{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 10, y - 40, "R")
	if selected = 18{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 10, y - 20, "S")
	if selected = 19{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 10, y, "T")
	if selected = 20{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x  + 10, y + 20, "U")
	if selected = 21{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y - 60, "V")
	if selected = 22{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y - 40, "W")
	if selected = 23{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y - 20, "X")
	if selected = 24{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y, "Y")
	if selected = 25{
    	draw_set_color(c_yellow)
	} else{
    	draw_set_color(c_white)
	}
	draw_text(x + 20, y + 20, "Z")
    
}
