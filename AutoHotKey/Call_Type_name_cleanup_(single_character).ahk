Escape::
ExitApp
Return

#q::

Send {TAB}{HOME}{DEL}
Sleep 100

loop 21
{
	Send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{DOWN}
	Sleep 100	
	Send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{DOWN}
	Sleep 100
	Send {HOME}{DEL}
	Sleep 100
}