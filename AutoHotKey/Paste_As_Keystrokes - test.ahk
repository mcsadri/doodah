Escape::
ExitApp
Return


#b::
#Persistent

clipStr := clipboard ;sets the clipStr var to the value of the clipboard (should be = speeddial;queuename)

;Remove all CR+LF's from the clipboard contents
	StringReplace, clipStr, clipStr, `r`n, , All

;Split clipStr's speeddial & queuename into separate substring arrays
	StringSplit, clipStr_array, clipStr, `;

Msgbox clipStr_array1 = %clipStr_array1%. And clipStr_array2 = %clipStr_array2%.