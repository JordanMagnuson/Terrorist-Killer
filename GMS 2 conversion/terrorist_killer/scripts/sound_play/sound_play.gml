function sound_play(argument0) {
	// ------------------------------------------------------------
	/// @description Plays the indicated sound once.
	/// @param index The index of the sound to play

	global.audio_typing = audio_play_sound( argument0, 10, false );
	var pitch = random_range(0.95, 1.05);
	audio_sound_pitch(global.audio_typing, pitch);

}
