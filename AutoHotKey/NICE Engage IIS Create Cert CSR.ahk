Escape::
ExitApp
Return

#b::
#Persistent

StringReplace, clipboard, clipboard, `r`n, , All
clipStr := clipboard ;sets the clipStr var to the value of the clipboard

;StringSplit, word_array, clipStr, %A_Tab%
;PGnum = %word_array3%

;Insert Distinguised Name Properties
	SendInput {END}
	Sleep 100
	SendInput {CTRLDOWN}V{CTRLUP}.cct.expecn.com
	Sleep 100
	SendInput {TAB}
	Sleep 100
	SendInput Expedia Group
	Sleep 100
	SendInput {TAB}
	Sleep 100
	SendInput RaW App Eng
	Sleep 100
	SendInput {TAB}
	Sleep 100
	city := SubStr(clipStr, 1 , 2)
	sleep 100
	if city = CH
		{
			SendInput Chandler
		}
	else
		{
			SendInput Phoenix
		}
	Sleep 100
	SendInput {TAB}
	Sleep 100
	SendInput AZ
	Sleep 100
	SendInput {TAB}{TAB}{ENTER}
	
	Sleep 500
	SendInput {TAB}
	Sleep 100
	SendInput {DOWN}
	Sleep 100
	SendInput {TAB}
	Sleep 100
	SendInput {TAB}
	Sleep 100
	SendInput {TAB}{TAB}{ENTER}
	
	Sleep 500
	SendInput C:\Users\msadri\Desktop\Engage cert requests\{CTRLDOWN}V{CTRLUP}.txt
	Sleep 250
	SendInput {TAB}{TAB}{TAB}{ENTER}

	
	Sleep 500
	city :=
	Sleep 500
	clipStr := 	
	Sleep 500
	clipboard :=	
	
Sleep 500
SoundBeep