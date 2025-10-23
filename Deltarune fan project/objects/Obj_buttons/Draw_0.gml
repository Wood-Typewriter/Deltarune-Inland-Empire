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
	draw_text(x, y - 30, "Controls")
		if selected = 1 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y, "Valume")
}
if menu = 3{
	if selected = 0 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y - 40, "Continue")
	if selected = 0 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y - 20, "New game")
	if selected = 0 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y, "Settings")
	if selected = 0 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y + 20, "Exit")
}