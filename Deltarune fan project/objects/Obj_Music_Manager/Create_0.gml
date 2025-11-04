//global volume control
global.masterVolume = 1;
global.musicVolume = 1;
// song settings per instance of music manager
songInstance = noone;
songAsset = noone;
targetSongAsset = noone;
endFadeOut = 0; // end of song fade by frames
startFadeInTime = 0; // start of song fade by frames
fadeInVolume = 1; // lolume of music instance

//fade out and stopping songs
fadeOutInstances = array_create(0); // audio intance fade
fadeOutInstVol = array_create(0); // volume for each instance
fadeOutInstTime = array_create(0); // how fast each fade out happens
songOverlap = false;