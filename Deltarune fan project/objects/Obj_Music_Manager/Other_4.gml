//plat correct music
// add "True" to end if song should overlap
if room == rm_Home_exterior
|| room == rm_Hometown_street_1
|| room == rm_pond
{
	set_song_ingame(Sng_town, 60, 0)
}
if room == rm_Main_room{
	set_song_ingame(noone, 3*60, 0)
}
if room == rm_forrest_path_1 {
	set_song_ingame(Sng_forrest_path, 3*60, 2*60)
}