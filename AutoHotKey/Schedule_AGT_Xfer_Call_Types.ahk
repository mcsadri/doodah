Escape::
ExitApp
Return

#q::

Send {TAB}{TAB}{ENTER}
Sleep 250
Send {DOWN}{ENTER}
Sleep 250

loop 38
{
	Sleep 250
	Send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}
	Sleep 250
	Send {DOWN}{TAB}{TAB}
	Sleep 250
	Send {ENTER}
	Sleep 250
	Send {DOWN}
	Sleep 250
	Send {ENTER}
}