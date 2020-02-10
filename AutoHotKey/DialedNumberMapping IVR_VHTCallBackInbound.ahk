Escape::
ExitApp
Return

#q::

Send,  255{TAB}{SPACE}{TAB}{TAB}{TAB}{TAB}{TAB}IVR_VHTCallBackInbound{ENTER}

loop 7
{
Send,  255{TAB}{TAB}{TAB}{TAB}{TAB}{DOWN}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}{TAB}{TAB}{TAB}{TAB}{TAB}IVR_VHTCallBackInbound{ENTER}
Sleep 100
}