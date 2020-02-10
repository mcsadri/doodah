Escape::
ExitApp
Return

#b::
#Persistent

StringReplace, clipboard, clipboard, `r`n, , All
clipStr := clipboard ;sets the clipStr var to the value of the clipboard

StringSplit, word_array, clipStr, %A_Tab%
PGnum = %word_array3%

;retrieve an existing EntSG, click "Add" and insure cursor is in blank Attributes:Name field, and then start
Send %word_array1%_SG{TAB}{TAB}%word_array2%_SG.62{TAB}{TAB}
Sleep 1000

Loop, Parse, PGnum
{
	
	Send {ENTER}
	Sleep 1000
	Send {DOWN}%A_LoopField%.%word_array1%{SHIFTDOWN}{DOWN}{DOWN}{DOWN}{DOWN}{SHIFTUP}{TAB}{ENTER}
	Sleep 500	

}

Sleep 500
SoundBeep