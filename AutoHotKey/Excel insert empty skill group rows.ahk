Escape::
ExitApp
Return

;Highlight/select entire first row of first listed skill group (should be row $5 on SG import template)

#q::

Send, {DOWN}

loop 40
{
	Send,{SHIFTDOWN}{SPACE}{DOWN}{DOWN}{DOWN}{CTRLDOWN}={CTRLUP}{SHIFTUP}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}
	Sleep 50
}