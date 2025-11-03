var _finalVol = global.musicVolume*global.masterVolume;
//play target song
if songAsset != targetSongAsset{
	// old song fade out
	if audio_is_playing(songInstance){
		//add songinstance to array to fade out
		array_push(fadeOutInstances, songInstance);
		//songinstance start vol (no chop)
		array_push(fadeOutInstVol, fadeInVolume);
		// fade out frames
		array_push(fadeOutInstTime, endFadeOut);
		//reset song asset/instance var
		songInstance = noone;
		songAsset = noone;
	}
	//play, if old is gone
	if array_length(fadeOutInstances) == 0{	
		if audio_exists(targetSongAsset){
			// play song and store instance
			songInstance = audio_play_sound(targetSongAsset, 4, true);
			//start the song at 0
			audio_sound_gain( songInstance, 0, 0);
			fadeInVolume = 0;
		}
		//set song asset to mach target song asset
		songAsset = targetSongAsset;
	}
}
//volume control
	// main song volume
	if audio_is_playing(songInstance){
		//fade song in
		if startFadeInTime > 0{
			if fadeInVolume < 1 {fadeInVolume += 1/startFadeInTime; } else fadeInVolume = 1;
		}
		// immediatley start the song if the fade in time is zero frames
		else{
			fadeInVolume = 1;
		} 
		// actually set the gain
		audio_sound_gain(songInstance, fadeInVolume*_finalVol, 0);
	}
	//fade song out
	for (var i = 0; i < array_length(fadeOutInstances); i++){
		//fade volume
		if fadeOutInstTime[i] >0 {
			if fadeOutInstVol[i] > 0 { fadeOutInstVol[i] -= 1/fadeOutInstTime[i]; };
		}
		// immediatly 0 vol
		else {
			fadeOutInstVol[i] = 0;
		}
		// actually set gain
		audio_sound_gain(fadeOutInstances[i], fadeOutInstVol[i]*_finalVol, 0);
		//stop song when 0 and remove from arrays
		if fadeOutInstVol[i] <= 0{
			//stop song
			if audio_is_playing(fadeOutInstances[i]) {audio_stop_sound(fadeOutInstances[i]); };
			//remove from arrays
			array_delete(fadeOutInstances, i, 1);
			array_delete(fadeOutInstVol, i, 1);
			array_delete(fadeOutInstTime, i, 1);
			//set loop back one
			i--;
		}
	}