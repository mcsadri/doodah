Escape::
ExitApp
Return

#q::
#Persistent

Send,  255{TAB}{SPACE}{TAB}{TAB}{TAB}{TAB}{TAB}ivr_expediainc_main{ENTER}

Sleep 250

loop 15
{
Send,  255{TAB}{TAB}{TAB}{TAB}{TAB}{DOWN}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}{TAB}{TAB}{TAB}{TAB}{TAB}ivr_expediainc_main{ENTER}
Sleep 250
}

SoundBeep
SoundBeep