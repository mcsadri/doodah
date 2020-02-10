Escape::
ExitApp
Return

#j::
#Persistent

seconds = 60

loop 
{
    sleep, % seconds*1000
    mousemove, 10, 0, 20, R
    mousemove, -10, 0, 20, R
}