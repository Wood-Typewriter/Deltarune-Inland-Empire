draw_set_font(Fnt_main)
draw_set_halign(fa_center) // might change this when title is redisigned

if menu = 1{

	if selected = 0 {
		draw_set_color(#FFFF00)
	} else {
		draw_set_color(c_white)
	}
	draw_text(x, y, "Begin Game")
}