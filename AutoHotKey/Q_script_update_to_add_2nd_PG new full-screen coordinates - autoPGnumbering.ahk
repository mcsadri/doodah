Escape::
ExitApp
Return

/*
1. use #v to find Q script
2. manually open script into browse mode and then close Script Explorer
3. use #b to add set script window position, open in edit mode, and add 2nd PG
4. manually save new script version
*/


#v::
#Persistent

;Expects input copied from excel cells where A1 = CSG name, A2 = PG number 1, A3 = PG number 2, A4 = PG number 3.

;Remove all CR+LF's from the clipboard contents:
StringReplace, clipboard, clipboard, `r`n, , All

;set the queueFind var to the value of the clipboard
queueFind := clipboard

;insert variable queueFind into an array
StringSplit, queueFind_array, queueFind, %A_Tab%
	;csgName = %queueFind_array1%
	;pgNum1 = %queueFind_array2%
	;pgNum2 = %queueFind_array3%
	;pgNum3 = %queueFind_array4%

;Open Q script
	SendInput {ALTDOWN}F{ALTUP}
	Sleep 500
	SendInput E
	Sleep 1000
	SendInput {RIGHT}{DOWN}
	Sleep 500
	SendInput {RIGHT}{DOWN}
	Sleep 500
	Send Q_%queueFind_array1%
	Sleep 500
	
SoundBeep
Return




#b::
#Persistent

;Expects input copied from excel cells where A1 = CSG name, A2 = PG number 1, A3 = PG number 2, A4 = PG number 3.

;Remove all CR+LF's from the clipboard contents:
StringReplace, clipboard, clipboard, `r`n, , All

;set the clipStr var to the value of the clipboard
clipStr := clipboard

;insert variable clipStr into an array
StringSplit, word_array, clipStr, %A_Tab%
	;csgName = %word_array1%
	;pgNum1 = %word_array2%
	;pgNum2 = %word_array3%
	;pgNum3 = %word_array4%

;Set window position & enable Edit mode
	;set to cascade
		SendInput {ALTDOWN}W{ALTUP}C
		Sleep 500
	;maximize script	
		MouseClick, left,  1605,  142
	;fit to window
		SendInput {ALTDOWN}V{ALTUP}F
		Sleep 500
	;set to edit mode
		SendInput {CTRLDOWN}{F5}{CTRLUP}
		Sleep 1000
	;cancel pop-up
		SendInput {TAB}{ENTER}
	Sleep 1000
	
;Set Skill Group Properties * 5
	Clipboard = %word_array2%.%word_array1%_5
		MouseClick, left, 1320, 373, 2
		Sleep 1500
		MouseClick, left, 787, 446
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		SendInput {ENTER}
		Sleep 1500

	Clipboard = %word_array2%.%word_array1%_4
		MouseClick, left, 1324, 414, 2
		Sleep 1500
		MouseClick, left, 787, 446
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		SendInput {ENTER}
		Sleep 1500
	
	Clipboard = %word_array2%.%word_array1%_3
		MouseClick, left, 1325, 456, 2
		Sleep 1500
		MouseClick, left, 787, 446
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		SendInput {ENTER}
		Sleep 1500
	
	Clipboard = %word_array2%.%word_array1%_2
		MouseClick, left, 1322, 496, 2
		Sleep 1500
		MouseClick, left, 787, 446
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		SendInput {ENTER}
		Sleep 1500
	
	Clipboard = %word_array2%.%word_array1%_1
		MouseClick, left, 1322, 536, 2
		Sleep 1500
		MouseClick, left, 787, 446
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		SendInput {ENTER}
		Sleep 1500

;Set Queue to Skill Group Properties * 10
	Clipboard = %word_array2%.%word_array1%_5
		MouseClick, left, 1277, 632, 2
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1230, 759
		Sleep 1500
		
	Clipboard = %word_array2%.%word_array1%_5
		MouseClick, left, 1279, 705, 2
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1230, 759
		Sleep 1500

	Clipboard = %word_array2%.%word_array1%_4
		MouseClick, left, 1369, 633, 2
		Sleep 1500
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500		
		MouseClick, left,  1230, 759
		Sleep 1500
		
	Clipboard = %word_array2%.%word_array1%_4
		MouseClick, left, 1369, 707, 2
		Sleep 1500
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500		
		MouseClick, left,  1230, 759
		Sleep 1500

	Clipboard = %word_array2%.%word_array1%_3
		MouseClick, left, 1449, 632, 2
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500	
		MouseClick, left,  1230, 759
		Sleep 1500
		
	Clipboard = %word_array2%.%word_array1%_3
		MouseClick, left, 1448, 707, 2
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1230, 759
		Sleep 1500

	Clipboard = %word_array2%.%word_array1%_2
		MouseClick, left, 1529, 630, 2
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1230, 759
		Sleep 1500
		
	Clipboard = %word_array2%.%word_array1%_2
		MouseClick, left, 1531, 707, 2
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1230, 759
		Sleep 1500
		
	Clipboard = %word_array2%.%word_array1%_1
		MouseClick, left, 1617, 631, 2
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500		
		MouseClick, left,  1230, 759
		Sleep 1500
		
	Clipboard = %word_array2%.%word_array1%_1
		MouseClick, left, 1618, 706, 2
		Sleep 1500
		MouseClick, left, 787, 510
		Sleep 1500
		SendInput {CTRLDOWN}V{CTRLUP}
		Sleep 1500
		MouseClick, left,  1230, 759
		Sleep 1500
/*	
;Save, activate, and close Q script
	Clipboard = Q_%word_array1%
	SendInput {ALTDOWN}F{ALTUP}A
	Sleep 2000
	;MouseClick, left, 1009, 610, 2
	SendInput {CTRLDOWN}V{CTRLUP}
	Sleep 2000
	SendInput {TAB}{SPACE}
	SendInput {ENTER}
;	;Sleep 3000
;	;Send {ALTDOWN}F{ALTUP}C	
	Sleep 2000
*/
;Msgbox, Q_%word_array1% Complete
SoundBeep
SoundBeep
Return