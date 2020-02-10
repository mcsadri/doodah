Escape::
ExitApp
Return

#b::
#Persistent

;Remove all CR+LF's from the clipboard contents
	StringReplace, clipboard, clipboard, `r`n, , All
;Sets the queue var to the value stored in clipboard
	skillgroup := clipboard

;Open Q script
	Send %skillgroup%

	
SoundBeep
Return