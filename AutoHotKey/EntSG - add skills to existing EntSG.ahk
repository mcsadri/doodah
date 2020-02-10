Escape::
ExitApp
Return

#b::
#Persistent

StringReplace, clipboard, clipboard, `r`n, , All
clipStr := clipboard ;sets the clipStr var to the value of the clipboard

StringSplit, word_array, clipStr, %A_Tab%
PGnum = %word_array2%

;retrieve existing EntSG: set optional filter to "name" and place cursor in blank Value field
Send %word_array1%{TAB}{TAB}{ENTER}
Sleep 1500
Send {TAB}{TAB}{TAB}{TAB}{TAB}
Sleep 1000

Loop, Parse, PGnum
{
	
	Send {ENTER}
	Sleep 1000
	Send {DOWN}%A_LoopField%.%word_array1%{SHIFTDOWN}{DOWN}{DOWN}{DOWN}{DOWN}{SHIFTUP}{TAB}{ENTER}
	Sleep 1000	

}

Sleep 500
SoundBeep