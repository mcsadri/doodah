Escape::
ExitApp
Return

#q::
#Persistent

Send,  255{TAB}{SPACE}{TAB}{TAB}{TAB}{TAB}{TAB}ivr_icrs_test_lab{ENTER}

loop 9
{
Send,  255{TAB}{TAB}{TAB}{TAB}{TAB}{DOWN}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}{TAB}{TAB}{TAB}{TAB}{TAB}ivr_icrs_test_lab{ENTER}
Sleep 100
}