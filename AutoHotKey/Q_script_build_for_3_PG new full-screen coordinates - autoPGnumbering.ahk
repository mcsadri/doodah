Escape::
ExitApp
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

;Open Q script template
	SendInput {ALTDOWN}F{ALTUP}
	Sleep 1000
	SendInput E
	Sleep 1000
	SendInput {RIGHT}{DOWN}
	Sleep 1000
	SendInput {RIGHT}{DOWN}
	Sleep 1000
	MouseClick, right, 548, 178
	Sleep 1500
	SendInput {DOWN}{RIGHT}{ENTER}
	Sleep 1500
	MouseClick, left, 1245, 169
	Sleep 1500

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

;Set EnterpriseSkillGroup for Unstaffed check
	MouseClick, left, 499, 219, 2
	Sleep 1500
	SendInput EntSkill.Default\%word_array1%_SG.LoggedOn<=0{TAB}{TAB}{ENTER}
	Sleep 1500

;Set Unstaffed Call Type
	MouseClick, left, 555, 218, 2
	Sleep 1500
	SendInput {TAB}UNS_%word_array1%{TAB}{TAB}{ENTER}
	Sleep 1500

;Set Call.PeripheralVariable1 for transfer override
	MouseClick, left, 557, 257, 2
	Sleep 1500
	SendInput {TAB}{TAB}{TAB}"%word_array1%"{TAB}{TAB}{ENTER}
	Sleep 1500

;Set Queue Time to Tempvar
	MouseClick, left, 499, 291, 2
	Sleep 1500
	SendInput {TAB}{TAB}{TAB}CallType.RTE_%word_array1%.RouterLongestCallQ{TAB}{TAB}{ENTER}
	Sleep 1500

;Set RTE Call Type
	MouseClick, left, 1273, 330, 2
	Sleep 1500
	SendInput {TAB}RTE_%word_array1%{TAB}{TAB}{ENTER}
	Sleep 1500
	
;Set Skill Group Properties * 5
	;Proficiency _5
		Clipboard = %word_array2%.%word_array1%_5
			MouseClick, left, 1320, 373, 2
			Sleep 1500
			MouseClick, left, 787, 427
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_5	
			Sleep 1500
			MouseClick, left, 787, 446
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_5	
			Sleep 1500
			MouseClick, left, 786, 462
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
			SendInput {ENTER}
			Sleep 1500

	;Proficiency _4
		Clipboard = %word_array2%.%word_array1%_4
			MouseClick, left, 1324, 414, 2
			Sleep 1500
			MouseClick, left, 787, 427
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_4	
			Sleep 1500
			MouseClick, left, 787, 446
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_4
			Sleep 1500
			MouseClick, left, 786, 462
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			SendInput {ENTER}
			Sleep 1500

	;Proficiency _3			
		Clipboard = %word_array2%.%word_array1%_3
			MouseClick, left, 1325, 456, 2
			Sleep 1500
			MouseClick, left, 787, 427
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_3	
			Sleep 1500
			MouseClick, left, 787, 446
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_3
			Sleep 1500
			MouseClick, left, 786, 462
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
			SendInput {ENTER}
			Sleep 1500

	;Proficiency _2			
		Clipboard = %word_array2%.%word_array1%_2
			MouseClick, left, 1322, 496, 2
			Sleep 1500
			MouseClick, left, 787, 427
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_2	
			Sleep 1500
			MouseClick, left, 787, 446
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_2	
			Sleep 1500
			MouseClick, left, 786, 462
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
			SendInput {ENTER}
			Sleep 1500
	
	;Proficiency _1
		Clipboard = %word_array2%.%word_array1%_1
			MouseClick, left, 1322, 536, 2
			Sleep 1500
			MouseClick, left, 787, 427
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_1	
			Sleep 1500
			MouseClick, left, 787, 446
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_1	
			Sleep 1500
			MouseClick, left, 786, 462
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			SendInput {ENTER}
			Sleep 1500

;Set Queue to Skill Group Properties * 10
	;Proficiency _5
		Clipboard = %word_array2%.%word_array1%_5
			MouseClick, left, 1277, 632, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_5	
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_5	
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			MouseClick, left,  1230, 759
			Sleep 1500
			
		Clipboard = %word_array2%.%word_array1%_5
			MouseClick, left, 1279, 705, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_5
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_5	
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			MouseClick, left,  1230, 759
			Sleep 1500

	;Proficiency _4			
		Clipboard = %word_array2%.%word_array1%_4
			MouseClick, left, 1369, 633, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_4
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_4	
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
			MouseClick, left,  1230, 759
			Sleep 1500
			
		Clipboard = %word_array2%.%word_array1%_4
			MouseClick, left, 1369, 707, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500		
		Clipboard = %word_array3%.%word_array1%_4
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_4	
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
			MouseClick, left,  1230, 759
			Sleep 1500

	;Proficiency _3			
		Clipboard = %word_array2%.%word_array1%_3
			MouseClick, left, 1449, 632, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_3
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_3
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			MouseClick, left,  1230, 759
			Sleep 1500
			
		Clipboard = %word_array2%.%word_array1%_3
			MouseClick, left, 1448, 707, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_3
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_3
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			MouseClick, left,  1230, 759
			Sleep 1500

	;Proficiency _2
		Clipboard = %word_array2%.%word_array1%_2
			MouseClick, left, 1529, 630, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_2
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_2
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			MouseClick, left,  1230, 759
			Sleep 1500
			
		Clipboard = %word_array2%.%word_array1%_2
			MouseClick, left, 1531, 707, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_2
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_2
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			MouseClick, left,  1230, 759
			Sleep 1500
		
	;Proficiency _1
		Clipboard = %word_array2%.%word_array1%_1
			MouseClick, left, 1617, 631, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_1
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_1
			Sleep 1500
			MouseClick, left, 789, 523
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500	
			MouseClick, left,  1230, 759
			Sleep 1500
			
		Clipboard = %word_array2%.%word_array1%_1
			MouseClick, left, 1618, 706, 2
			Sleep 1500
			MouseClick, left, 782, 494
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array3%.%word_array1%_1
			Sleep 1500
			MouseClick, left, 787, 510
			Sleep 1500
			SendInput {CTRLDOWN}V{CTRLUP}
			Sleep 1500
		Clipboard = %word_array4%.%word_array1%_1
			Sleep 1500
			MouseClick, left, 789, 523
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