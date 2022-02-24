function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // oGame
	global.__objectDepths[1] = -10; // oLighting
	global.__objectDepths[2] = -99999999; // oFadeOut
	global.__objectDepths[3] = -99999999; // oWhiteFlash
	global.__objectDepths[4] = -999; // oDebug
	global.__objectDepths[5] = 0; // button
	global.__objectDepths[6] = 0; // oGut
	global.__objectDepths[7] = -1; // oBlood
	global.__objectDepths[8] = -100002; // o_bcase
	global.__objectDepths[9] = 0; // o_bloodtrail
	global.__objectDepths[10] = 0; // oTitleScreen
	global.__objectDepths[11] = -10; // oTitle
	global.__objectDepths[12] = -10; // oByLine
	global.__objectDepths[13] = -10; // oPressSpaceOld
	global.__objectDepths[14] = -10; // oPressSpace
	global.__objectDepths[15] = -99999; // oFadeTitle
	global.__objectDepths[16] = -99999; // oFadeInTitle
	global.__objectDepths[17] = 0; // oBriefing
	global.__objectDepths[18] = 0; // oSpaceToSkipText
	global.__objectDepths[19] = 0; // oBriefingScore
	global.__objectDepths[20] = 0; // oLevel
	global.__objectDepths[21] = -100001; // oCrosshairs
	global.__objectDepths[22] = 0; // oBullet
	global.__objectDepths[23] = 0; // oPerson
	global.__objectDepths[24] = 0; // oTerrorist
	global.__objectDepths[25] = 1; // oPersonDying
	global.__objectDepths[26] = 1; // oPersonDead
	global.__objectDepths[27] = 0; // oExplosion
	global.__objectDepths[28] = 0; // oMinusPoints
	global.__objectDepths[29] = 0; // oMinusPointsChildren
	global.__objectDepths[30] = -1; // oPlusPoints
	global.__objectDepths[31] = 0; // oResults
	global.__objectDepths[32] = 0; // oEnterName
	global.__objectDepths[33] = -10; // oEnterNameText
	global.__objectDepths[34] = -10; // oAlphabet1
	global.__objectDepths[35] = -10; // oAlphabet2
	global.__objectDepths[36] = -10; // oAlphabet3
	global.__objectDepths[37] = -10; // oLetter1
	global.__objectDepths[38] = -10; // oLetter2
	global.__objectDepths[39] = -10; // oLetter3
	global.__objectDepths[40] = 0; // oStripeBig
	global.__objectDepths[41] = -10; // oPointer
	global.__objectDepths[42] = -10; // oRightText
	global.__objectDepths[43] = -10; // oQuoteTextOld
	global.__objectDepths[44] = -10; // oChomskyText
	global.__objectDepths[45] = -10; // oQuoteText
	global.__objectDepths[46] = 0; // oHighScore


	global.__objectNames[0] = "oGame";
	global.__objectNames[1] = "oLighting";
	global.__objectNames[2] = "oFadeOut";
	global.__objectNames[3] = "oWhiteFlash";
	global.__objectNames[4] = "oDebug";
	global.__objectNames[5] = "button";
	global.__objectNames[6] = "oGut";
	global.__objectNames[7] = "oBlood";
	global.__objectNames[8] = "o_bcase";
	global.__objectNames[9] = "o_bloodtrail";
	global.__objectNames[10] = "oTitleScreen";
	global.__objectNames[11] = "oTitle";
	global.__objectNames[12] = "oByLine";
	global.__objectNames[13] = "oPressSpaceOld";
	global.__objectNames[14] = "oPressSpace";
	global.__objectNames[15] = "oFadeTitle";
	global.__objectNames[16] = "oFadeInTitle";
	global.__objectNames[17] = "oBriefing";
	global.__objectNames[18] = "oSpaceToSkipText";
	global.__objectNames[19] = "oBriefingScore";
	global.__objectNames[20] = "oLevel";
	global.__objectNames[21] = "oCrosshairs";
	global.__objectNames[22] = "oBullet";
	global.__objectNames[23] = "oPerson";
	global.__objectNames[24] = "oTerrorist";
	global.__objectNames[25] = "oPersonDying";
	global.__objectNames[26] = "oPersonDead";
	global.__objectNames[27] = "oExplosion";
	global.__objectNames[28] = "oMinusPoints";
	global.__objectNames[29] = "oMinusPointsChildren";
	global.__objectNames[30] = "oPlusPoints";
	global.__objectNames[31] = "oResults";
	global.__objectNames[32] = "oEnterName";
	global.__objectNames[33] = "oEnterNameText";
	global.__objectNames[34] = "oAlphabet1";
	global.__objectNames[35] = "oAlphabet2";
	global.__objectNames[36] = "oAlphabet3";
	global.__objectNames[37] = "oLetter1";
	global.__objectNames[38] = "oLetter2";
	global.__objectNames[39] = "oLetter3";
	global.__objectNames[40] = "oStripeBig";
	global.__objectNames[41] = "oPointer";
	global.__objectNames[42] = "oRightText";
	global.__objectNames[43] = "oQuoteTextOld";
	global.__objectNames[44] = "oChomskyText";
	global.__objectNames[45] = "oQuoteText";
	global.__objectNames[46] = "oHighScore";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
