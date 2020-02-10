Escape::
ExitApp
Return


;************************************************************
#v::
#Persistent

;set value of clipboard to variable clipStr
	clipStr := clipboard ;sets the clipStr var to the value of the clipboard (should be = speeddial;queuename)

;Remove all CR+LF's from clipStr contents
	StringReplace, clipboard, clipboard, `r`n, , All
	
;Split clipStr's speeddial & queuename into separate substring arrays where %clipStr_array1% = speeddial and %clipStr_array2% = queuename
	StringSplit, clipStr_array, clipStr, `;
	
;Send IF Node condition w/ queue
	Send Call.DialedNumberString=="%clipStr_array1%"
	Sleep 500
	Send {TAB}{TAB}{ENTER}
		
Soundbeep
Return
	
	
;************************************************************	
#b::
#Persistent

;set value of clipboard to variable clipStr
	clipStr := clipboard ;sets the clipStr var to the value of the clipboard (should be = speeddial;queuename)

;Remove all CR+LF's from the clipStr contents
	StringReplace, clipboard, clipboard, `r`n, , All
	
;Split clipStr's speeddial & queuename into separate substring arrays where %clipStr_array1% = speeddial and %clipStr_array2% = queuename
	StringSplit, clipStr_array, clipStr, `;

;Select VHT CallType
	Send {TAB}{TAB}{TAB}"%clipStr_array2%"
	Sleep 250
	Send {TAB}{TAB}{ENTER}
	
	
	
	
	
	Soundbeep
	Return