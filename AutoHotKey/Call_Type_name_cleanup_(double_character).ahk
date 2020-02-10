Escape::
ExitApp
Return

#q::

Send {TAB}{HOME}{DEL}{DEL}
Sleep 100

loop 44
{
	Send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{DOWN}
	Sleep 100	
	Send {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{DOWN}
	Sleep 100
	Send {HOME}{DEL}{DEL}
	Sleep 100
}