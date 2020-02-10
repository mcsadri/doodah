Escape::
ExitApp
Return

#b::
#Persistent

;Remove all CR+LF's from the clipboard contents
	StringReplace, clipboard, clipboard, `r`n, , All
	
;Sets the queue var to the value stored in clipboard
	queue := clipboard
	
;Send Q script name
	Send q_%queue%
	Sleep 250
	Send {TAB}{ENTER}

SoundBeep