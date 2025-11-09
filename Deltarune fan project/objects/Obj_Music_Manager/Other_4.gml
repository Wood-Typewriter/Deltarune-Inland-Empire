//play correct music
// add "True" to end if song should overlap
if room = rm_Title{
	set_song_ingame(Sng_title, 0, 0, false, 1) //note .25 pitch is horrorune
}
if room = rm_Kris_Asrial_room
|| room = rm_Hall
|| room = rm_Main_room
|| room = rm_Bathroom
{
	set_song_ingame(noone)
}
if room == rm_Home_exterior
|| room == rm_Hometown_street_1
|| room == rm_pond
{
	set_song_ingame(Sng_town_day, 60, 0)
}
if room == rm_Main_room{
	set_song_ingame(noone, 3*60, 0)
}
if room == rm_forrest_path_1 {
	set_song_ingame(Sng_forrest_path, 3*60, 2*60)
}