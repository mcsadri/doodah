Escape::
ExitApp
Return

#b::
#Persistent

;Remove all CR+LF's from the clipboard contents
	StringReplace, clipboard, clipboard, `r`n, , All
;Sets the queue var to the value stored in clipboard
	queue := clipboard

;Close Script Explorer window (clicks 'Close' button in non-maximized window)
	;MouseClick, left, 1244, 172
	;Sleep 1000
	
;Open Q script
	SendInput {ALTDOWN}F{ALTUP}
	Sleep 500
	SendInput E
	Sleep 1000
	SendInput {RIGHT}{DOWN}
	Sleep 500
	SendInput {RIGHT}{DOWN}
	Sleep 500
	Send Q_%queue%
	Sleep 500
	
SoundBeep
Return

;doodah git training change
;doodah git training change one more time