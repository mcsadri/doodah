Escape::
ExitApp
Return

;Assumes multiple DN>CallType mappings without saving after each. Use #v to set the first DN (after selecting the DN from the DN list). Use #b for subsequent mappings.

#v::		
#Persistent

;set value of clipboard to variable clipStr
	clipStr := clipboard ;sets the clipStr var to the value of the clipboard

;Remove all CR+LF's from clipStr contents
	StringReplace, clipStr, clipStr, `r`n, , All
	
Send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}
Sleep 250
Send {TAB}{TAB}{TAB}{TAB}{TAB}%clipStr%{ENTER}
Sleep 250
SoundBeep
Return


#b::
#Persistent

;set value of clipboard to variable clipStr
	clipStr := clipboard ;sets the clipStr var to the value of the clipboard

;Remove all CR+LF's from clipStr contents
	StringReplace, clipStr, clipStr, `r`n, , All
	
Send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}
Sleep 250
Send {TAB}{TAB}{TAB}{TAB}{TAB}%clipStr%{ENTER}
Sleep 250
SoundBeep
Return