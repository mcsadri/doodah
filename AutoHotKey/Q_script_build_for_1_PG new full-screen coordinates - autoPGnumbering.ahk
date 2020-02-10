Escape::
ExitApp
Return

#b::
#Persistent

;Expects input copied from excel cells where A1 = CSG name, and A2 = PG number 1.

;Remove all CR+LF's from the clipboard contents:
StringReplace, clipboard, clipboard, `r`n, , All

;set the clipStr var to the value of the clipboard
clipStr := clipboard

;insert clipboard data into an array where:
;callSegmentGroupName 	= %word_array1%
;pgNumber 				= %word_array2%
StringSplit, word_array, clipStr, %A_Tab%

;Open Q script template
	SendInput {ALTDOWN}F{ALTUP}
	Sleep 1000
	SendInput E
	Sleep 1000
	SendInput {RIGHT}{DOWN}
	Sleep 1000
	SendInput {RIGHT}{DOWN}
	Sleep 1000
	MouseClick, right, 510, 198
	Sleep 1500
	SendInput {DOWN}{RIGHT}{ENTER}
	Sleep 1500
	MouseClick, left, 1241, 151
	Sleep 1500

;Set window position & enable Edit mode
	;set to cascade
		SendInput {ALTDOWN}W{ALTUP}C
		Sleep 500
	;maximize script	
		MouseClick, left, 242, 158
		SendInput {DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{ENTER}
	;fit to window
		SendInput {ALTDOWN}V{ALTUP}F
		Sleep 500
	;set to edit mode
		SendInput {CTRLDOWN}{F5}{CTRLUP}
		Sleep 1000
	;cancel pop-up
		SendInput {TAB}{ENTER}
	Sleep 1000

;Set EnterpriseSkillGroup for Unstaffed check
	MouseClick, left, 477, 218, 2
	Sleep 1500
	SendInput EntSkill.Default\%word_array1%_SG.LoggedOn<=0
	Sleep 500
	SendInput {TAB}{TAB}{ENTER}
	Sleep 1000

;Set Unstaffed Call Type
	MouseClick, left, 533, 219, 2
	Sleep 1500
	SendInput {TAB}UNS_%word_array1%
	Sleep 500
	SendInput {TAB}{TAB}{ENTER}
	Sleep 1000

;Set Call.PeripheralVariable1 for transfer override
	MouseClick, left, 533, 257, 2
	Sleep 1500
	SendInput {TAB}{TAB}{TAB}"%word_array1%"
	Sleep 500
	SendInput {TAB}{TAB}{ENTER}
	Sleep 1000

;Set Queue Time to Tempvar
	MouseClick, left, 476, 289, 2
	Sleep 1500
	SendInput {TAB}{TAB}{TAB}CallType.RTE_%word_array1%.RouterLongestCallQ
	Sleep 500
	SendInput {TAB}{TAB}{ENTER}
	Sleep 1000

;Set RTE Call Type
	MouseClick, left, 1251, 329, 2
	Sleep 1500
	SendInput {TAB}RTE_%word_array1%
	Sleep 500
	SendInput {TAB}{TAB}{ENTER}
	Sleep 1000
	
;Set Skill Group Properties * 5
	Clipboard = %word_array2%.%word_array1%_5
		MouseClick, left, 1295, 373, 2
		Sleep 1500
		MouseClick, left, 763, 486
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1000
		SendInput {ENTER}
		Sleep 500
	
	Clipboard = %word_array2%.%word_array1%_4
		MouseClick, left, 1297, 412, 2
		Sleep 1500
		MouseClick, left, 763, 486
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1000
		SendInput {ENTER}
		Sleep 500
	
	Clipboard = %word_array2%.%word_array1%_3
		MouseClick, left, 1299, 455, 2
		Sleep 1500
		MouseClick, left, 763, 486
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1000
		SendInput {ENTER}
		Sleep 500
	
	Clipboard = %word_array2%.%word_array1%_2
		MouseClick, left, 1299, 497, 2
		Sleep 1500
		MouseClick, left, 763, 486
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1000
		SendInput {ENTER}
		Sleep 500
	
	Clipboard = %word_array2%.%word_array1%_1
		MouseClick, left, 1299, 537, 2
		Sleep 1500
		MouseClick, left, 763, 486
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1000
		SendInput {ENTER}
		Sleep 500

;Set Queue to Skill Group Properties * 10
	Clipboard = %word_array2%.%word_array1%_5
		MouseClick, left, 1256, 630, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left, 1210, 756
		Sleep 1500
		
		MouseClick, left, 1256, 704, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500

	Clipboard = %word_array2%.%word_array1%_4
		MouseClick, left, 1346, 632, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500
		
		MouseClick, left, 1346, 705, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500

	Clipboard = %word_array2%.%word_array1%_3
		MouseClick, left, 1426, 631, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500
		
		MouseClick, left, 1426, 707, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500

	Clipboard = %word_array2%.%word_array1%_2
		MouseClick, left, 1509, 631, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500
		
		MouseClick, left, 1508, 706, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500
		
	Clipboard = %word_array2%.%word_array1%_1
		MouseClick, left, 1595, 630, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500
		
		MouseClick, left, 1595, 704, 2
		Sleep 1500
		MouseClick, left, 766, 491
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1210, 756
		Sleep 1500
		
;Save, activate, and close Q script
	Clipboard = Q_%word_array1%
	SendInput {ALTDOWN}F{ALTUP}A
	Sleep 3000
	SendInput {CTRLDOWN}V{CTRLUP}
	Sleep 3000
	SendInput {TAB}{SPACE}{ENTER}
	Sleep 4000
	Send {ALTDOWN}F{ALTUP}C	
	Sleep 3000

SoundBeep
SoundBeep	
/*
Msgbox, Q_%word_array1% Complete
*/