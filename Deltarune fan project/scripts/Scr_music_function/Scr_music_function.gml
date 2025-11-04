function set_song_ingame(_song, _fadeOutCurrentSong = 0, _fadeIn = 0, _songOverlap = false){
//_song = set to any song (including "noone" to stop or fade track out)
//_fadeOutCurrentSong = time (in frames) the current song (if playing) will take to fade out
//_fadeIn = time (in frames) the target song (if not "noone") will take to fade in
//_songOverlap = should the old song overlap with the new song playing?
	with(Obj_Music_Manager){
		targetSongAsset = _song;
		endFadeOut = _fadeOutCurrentSong;
		startFadeInTime  = _fadeIn;
		songOverlap = _songOverlap;
	}
}