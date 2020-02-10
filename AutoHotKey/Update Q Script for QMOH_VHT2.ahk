Escape::
ExitApp
Return

#b::
#Persistent

;Sets the queue var to the value stored in clipboard
	queues := clipboard
	
Loop, Parse, queues, `;
{

	;Open Q script
	SendInput {ALTDOWN}F{ALTUP}E{RIGHT}{DOWN}
	Sleep 500
	SendInput {RIGHT}{DOWN}
	Sleep 500
	Send Q_%A_LoopField%
	MouseClick, right, 590, 224
	Sleep 1000
	SendInput {DOWN}{RIGHT}{ENTER}
	Sleep 1500
	MouseClick, left, 1644, 186
	Sleep 1500

	;Set window position & enable Edit mode (full-screen unnecessary)
	SendInput {ALTDOWN}W{ALTUP}C
	Sleep 500
	SendInput {ALTDOWN}V{ALTUP}F
	Sleep 500
	SendInput {CTRLDOWN}{F5}{CTRLUP}
	Sleep 1000
	SendInput {TAB}{ENTER}
	Sleep 1000
	
	;Set Go To Script (node 4334) to ExpediaInc_QMOH_VHT
	MouseClick, left, 1377, 479, 2
		;SendInput {DOWN}{ENTER}			commented out to send specific script name in the next line
	Sleep 1000
	Send ExpediaInc_QMOH_VHT
	SendInput {TAB}{ENTER}
	Sleep 1000
	
	;Save, activate, and close Q script
;	SendInput {ALTDOWN}F{ALTUP}A
;	Sleep 1000
;	SendInput {TAB}{SPACE}{ENTER}
;	Sleep 2000
;	Send {ALTDOWN}F{ALTUP}C	
;	Sleep 2000
	
}

SoundBeep
Return