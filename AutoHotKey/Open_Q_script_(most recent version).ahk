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
	SendInput {ALTDOWN}F{ALTUP}E{RIGHT}{DOWN}
	Sleep 500
	SendInput {RIGHT}{DOWN}
	Sleep 500
	Send Q_%queue%
	Sleep 500
	MouseClick, right, 590, 224
	Sleep 500
	SendInput {DOWN}{RIGHT}{ENTER}
	Sleep 1000
	MouseClick, left, 1639, 186
	Sleep 1000

;Set window position & full-screen mode
	SendInput {ALTDOWN}W{ALTUP}C
	Sleep 100
	MouseClick, left, 1607, 141
	Sleep 100
	SendInput {ALTDOWN}V{ALTUP}F
	Sleep 500
	
SoundBeep
Return