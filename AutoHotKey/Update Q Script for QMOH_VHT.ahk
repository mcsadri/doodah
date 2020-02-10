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
		MouseClick, right, 590, 224
	Sleep 500
	SendInput {DOWN}{RIGHT}{ENTER}
	Sleep 1000
	MouseClick, left, 1238, 186
	Sleep 1000

;Set window position & enable Edit mode (full-screen unnecessary)
	SendInput {ALTDOWN}W{ALTUP}C
	Sleep 100
	SendInput {ALTDOWN}V{ALTUP}F
	Sleep 100
	SendInput {CTRLDOWN}{F5}{CTRLUP}
	Sleep 1000
	SendInput {TAB}{ENTER}
	Sleep 1000
	
;Set Go To Script (node 4334) to ExpediaInc_QMOH_VHT
	MouseClick, left, 1377, 479, 2
		;SendInput {DOWN}{ENTER}			commented out to send specific script name in the next line
	Send ExpediaInc_QMOH_VHT
	SendInput {TAB}{ENTER}
	
;Save, activate, and close Q script
		;Clipboard = Q_%queue%
	SendInput {ALTDOWN}F{ALTUP}A
	Sleep 1000
		;MouseClick, left, 1009, 610, 2
		;SendInput {CTRLDOWN}V{CTRLUP}
		;Sleep 1000
	SendInput {TAB}{SPACE}{ENTER}
	Sleep 2000
	Send {ALTDOWN}F{ALTUP}C	
	Sleep 500

SoundBeep	
;Msgbox, %queue% Complete
Return

	

	
#f::
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
		MouseClick, right, 590, 224
	Sleep 500
	SendInput {DOWN}{RIGHT}{ENTER}
	Sleep 1000
	MouseClick, left, 1238, 186
	Sleep 1000

SoundBeep	
Return