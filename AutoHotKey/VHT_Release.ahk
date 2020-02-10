Escape::
ExitApp
Return

#v::
#Persistent

;Requires Call Segment Group name copied into clipboard

;Remove all CR+LF's from the clipboard contents
	StringReplace, clipboard, clipboard, `r`n, , All
	
;Sets the queue var to the value stored in clipboard
	queue := clipboard
	
;Send IF condition w/ queue
	Send Call.PeripheralVariable1=="%queue%"
	Sleep 250
	Send {TAB}{TAB}{ENTER}
	Return

#b::
#Persistent

;Remove all CR+LF's from the clipboard contents
	StringReplace, clipboard, clipboard, `r`n, , All
	
;Sets the queue var to the value stored in clipboard
	queue := clipboard

;Select VHT CallType
	Send {TAB}VHT_%queue%
	Sleep 250
	Send {TAB}{TAB}{ENTER}
	Return