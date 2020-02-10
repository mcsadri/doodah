Escape::
ExitApp
Return

#w::
clipStr := "IVR_ExpediaInc_M"

Loop, 9
{
	Loop, parse, clipStr
	{	
		if RegExMatch(A_LoopField, "[a-zA-Z0-9_.]") > 0
		{
			; Send, %A_LoopField%
			if RegExMatch(A_LoopField, "[a-zA-Z]") > 0
			{
				Send, {SHIFTDOWN}%A_LoopField%{SHIFTUP}
				SetKeyDelay, 25,25
			} else {
				Send, %A_LoopField%
				SetKeyDelay, 25,25
			}
		}
	}

	SetKeyDelay, 25,25
	Send, {enter}
	SetKeyDelay, 25,25
	Send, {enter}

	SetKeyDelay, 25,25
	Send, {tab}
	SetKeyDelay, 25,25
	Send, {tab}
	SetKeyDelay, 25,25
	Send, {tab}
	SetKeyDelay, 25,25
	Send, {tab}
	SetKeyDelay, 25,25
	Send, {tab}
	SetKeyDelay, 25,25
	Send, {down}

	SetKeyDelay, 25,25
	Send, {shift down}{tab}{shift up}
	SetKeyDelay, 25,25
	Send, {shift down}{tab}{shift up}
	SetKeyDelay, 25,25
	Send, {shift down}{tab}{shift up}

	SetKeyDelay, 25,25
	Send, {space}
	SetKeyDelay, 25,25
	Send, {shift down}{tab}{shift up}

	SetKeyDelay, 100,100

}

Loop, parse, clipStr
{	
	if RegExMatch(A_LoopField, "[a-zA-Z0-9_.]") > 0
	{
		; Send, %A_LoopField%
		if RegExMatch(A_LoopField, "[a-zA-Z]") > 0
		{
			Send, {SHIFTDOWN}%A_LoopField%{SHIFTUP}
			SetKeyDelay, 25,25
		} else {
			Send, %A_LoopField%
			SetKeyDelay, 25,25
		}
	}


}

Send, {enter}
SetKeyDelay, 25,25
Send, {Alt Down}
SetKeyDelay, 25,25
Send, s
SetKeyDelay, 25,25
Send, {Alt Up}


Return


#r::
clipStr := "IVR_ExpediaInc_M"

Loop, 9
{
	Loop, parse, clipStr
	{	
		if RegExMatch(A_LoopField, "[a-zA-Z0-9_.]") > 0
		{
			; Send, %A_LoopField%
			if RegExMatch(A_LoopField, "[a-zA-Z]") > 0
			{
				Send, {SHIFTDOWN}%A_LoopField%{SHIFTUP}
				SetKeyDelay, 15,15
			} else {
				Send, %A_LoopField%
				SetKeyDelay, 15,15
			}
		}
	}

	SetKeyDelay, 15,15
	Send, {enter}
	SetKeyDelay, 15,15
	Send, {enter}

	SetKeyDelay, 15,15
	Send, {tab}
	SetKeyDelay, 15,15
	Send, {tab}
	SetKeyDelay, 15,15
	Send, {tab}
	SetKeyDelay, 15,15
	Send, {tab}
	SetKeyDelay, 15,15
	Send, {tab}
	SetKeyDelay, 15,15
	Send, {down}

	SetKeyDelay, 15,15
	Send, {shift down}{tab}{shift up}
	SetKeyDelay, 15,15
	Send, {shift down}{tab}{shift up}
	SetKeyDelay, 15,15
	Send, {shift down}{tab}{shift up}

	SetKeyDelay, 15,15
	Send, {space}
	SetKeyDelay, 15,15
	Send, {shift down}{tab}{shift up}

	SetKeyDelay, 50,50

}

Loop, parse, clipStr
{	
	if RegExMatch(A_LoopField, "[a-zA-Z0-9_.]") > 0
	{
		; Send, %A_LoopField%
		if RegExMatch(A_LoopField, "[a-zA-Z]") > 0
		{
			Send, {SHIFTDOWN}%A_LoopField%{SHIFTUP}
			SetKeyDelay, 15,15
		} else {
			Send, %A_LoopField%
			SetKeyDelay, 15,15
		}
	}
}

SetKeyDelay, 15,15
Send, {enter}
SetKeyDelay, 15,15
Send, {enter}

Return


	