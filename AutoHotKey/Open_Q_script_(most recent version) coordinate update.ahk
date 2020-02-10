Escape::
ExitApp
Return

#b::
#Persistent

;Remove all CR+LF's from the clipboard contents
	StringReplace, clipboard, clipboard, `r`n, , All
;Sets the queue var to the value stored in clipboard
	queue := clipboard
	
;Open Q script
	SendInput {ALTDOWN}F{ALTUP}
	Sleep 500
	SendInput E
	Sleep 500
	SendInput {RIGHT}{DOWN}
	Sleep 500
	SendInput {RIGHT}{DOWN}
	Sleep 500
	Send Q_%queue%
	Sleep 500
	MouseClick, right, 546, 178
	Sleep 500
	SendInput {DOWN}{RIGHT}{ENTER}
	Sleep 1000
	MouseClick, left, 1272, 171
	Sleep 1000

;Set window position & full-screen mode
	/*SendInput {ALTDOWN}W{ALTUP}C
	Sleep 500*/
	MouseClick, left, 3517, 133
	Sleep 500
	SendInput {ALTDOWN}V{ALTUP}F
	Sleep 1000
	/*SendInput {CTRLDOWN}{F5}{CTRLUP}
	Sleep 5000*/
	
SoundBeep
Return