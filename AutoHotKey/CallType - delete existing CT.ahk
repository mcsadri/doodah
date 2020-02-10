Escape::
ExitApp
Return

#v::
#Persistent

StringReplace, clipboard, clipboard, `r`n, , All
clipStr := clipboard ;sets the clipStr var to the value of the clipboard

;retrieve existing EntSG: set optional filter to "name" and place cursor in blank Value field
	Send {CTRLDOWN}A{CTRLUP}
	Sleep 500
	Send {BACKSPACE}
	Sleep 1000
	Send %clipStr%{TAB}{TAB}{ENTER}
	Sleep 1000
	
	Send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}
	Sleep 250
	Send {ALTDOWN}D{ALTUP}
	Sleep 250
	Send {DOWN}
	Sleep 250
	Send {ALTDOWN}D{ALTUP}
	Sleep 250
	Send {DOWN}
	Sleep 250
	Send {ALTDOWN}D{ALTUP}
	Sleep 250
	
	Send {ALTDOWN}S{ALTUP}
	Sleep 500
	
	SoundBeep
	SoundBeep
	Return