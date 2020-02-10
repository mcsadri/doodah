Escape::
ExitApp
Return

#b::
#Persistent

StringReplace, clipboard, clipboard, `r`n, , All
agent := clipboard

;find/open agent (expects Agent half of window is on Skill Group Membership)
Send {CTRLDOWN}a{CTRLUP}{BACKSPACE}
Send %agent%{TAB}{TAB}{ENTER}
Sleep 1000
MouseClick, left, 577, 455
Sleep 1000

;remove existing skill group
MouseClick, left, 917, 238
Send {SHIFTDOWN}{DOWN}{DOWN}{DOWN}{DOWN}{SHIFTUP}
Sleep 500
MouseClick, left, 1033, 345
Sleep 1000


;Add new skills
MouseClick, left, 927, 344
Sleep 1000
Send {DOWN}{DOWN}{DOWN}
Send 6.H01_NBA_EN_GCS_GEN_GEN_GEN_5
Sleep 500
MouseClick, left, 1044, 393
Sleep 500

MouseClick, left, 927, 344
Sleep 1000
Send {DOWN}{DOWN}{DOWN}
Send 6.H02_NBA_EN_GCS_GEN_GEN_GEN_5
Sleep 500
MouseClick, left, 1044, 393
Sleep 500

MouseClick, left, 927, 344
Sleep 1000
Send {DOWN}{DOWN}{DOWN}
Send 6.H03_NBA_EN_GCS_GEN_GEN_GEN_5
Sleep 500
MouseClick, left, 1044, 393
Sleep 500

MouseClick, left, 927, 344
Sleep 1000
Send {DOWN}{DOWN}{DOWN}
Send 6.X01_NBA_EN_GTS_GEN_GEN_GEN_4
Sleep 500
MouseClick, left, 1044, 393
Sleep 500

MouseClick, left, 927, 344
Sleep 1000
Send {DOWN}{DOWN}{DOWN}
Send 6.X02_NBA_EN_GTS_GEN_GEN_GEN_4
Sleep 500
MouseClick, left, 1044, 393
Sleep 500


;save changes	
MouseClick, left, 560, 838	
Sleep 500
SoundBeep
Return