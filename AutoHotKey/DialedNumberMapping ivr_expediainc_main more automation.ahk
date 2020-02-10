Escape::
ExitApp
Return

#b::
#Persistent

	;expects Dialed Number / Script Selector List tool in upper left of Remote Desktop Connection Manager (where pane slider is directly under the s in Remote Desktops menu
	;expects Dialed Numbers arranged into | delimited cells/arrays (e.g. 8002806560|8002807098|8003184912|8003184918)

	StringReplace, clipboard, clipboard, `r`n, , All
	clipStr := clipboard ;sets the clipStr var to the value of the clipboard

	Loop, Parse, clipStr, `|
	{
	
		;find Dialed Number. Expects Routing Client set to All w/ Optional Filter set to Dialed Number String Contains, and cursor set in Value field
		Send {Home}{CtrlDown}A{CtrlUp}{Delete}
		Sleep 250
		Send %A_LoopField%
		Sleep 250
		Send {Tab}{Tab}{Enter}
		Sleep 250
		
		;set Call Type Mapping for each of the dialed number on each of the 10 CVP routing clients.
		Send {Tab}{Enter}
		Sleep 250
		Send {Tab}{Tab}{Tab}{Tab}{Tab}ivr_expediainc_main{ENTER}
		Sleep 250

		loop 9
		{
			Send {Tab}{Tab}{Tab}{Tab}{Tab}{Down}
			Sleep 250
			Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
			Sleep 250
			Send {Tab}{Tab}{Tab}{Tab}{Tab}ivr_expediainc_main{ENTER}
			Sleep 250
		}
		
		;save changes
		Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
		Sleep 5000
		SoundBeep
		
		;reset cursor to Optional Filter's Value field
		MouseClick, left, 575, 197
		
	}

	Sleep 2000
	SoundBeep
	SoundBeep	
	SoundBeep
	SoundBeep

Return