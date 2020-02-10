Escape::
ExitApp
Return

#b::
#Persistent

;Remove all CR+LF's from the clipboard contents
	StringReplace, clipboard, clipboard, `r`n, , All
	
;Sets the queue var to the value stored in clipboard
	queue := clipboard

;Select Q script
	Send Q_%queue%
	Sleep 250
	Send {TAB}{ENTER}
	Sleep 250
	SoundBeep
	Return