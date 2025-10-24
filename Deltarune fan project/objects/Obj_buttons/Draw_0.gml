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
	
}