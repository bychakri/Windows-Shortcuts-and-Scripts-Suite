#ifWinActive ahk_exe TogglDesktop.exe
^u::
WinGetPos ,,,togglWidth,,ahk_exe TogglDesktop.exe
centerPos := (A_ScreenWidth - togglWidth)/2
WinMove, ahk_exe TogglDesktop.exe,, %centerPos%, -45
return
^p::
InputBox, pTime,,Enter Time,,136,121
WinActivate,ahk_exe TogglDesktop.exe
CoordMode, Mouse , Window
Click ,Right,318,68
Send, {Down 6}{Enter}
sleep,100
Click,,275,126,2
Send, %pTime%
Click,,380,472
CoordMode, Mouse , Screen
return
^l::
if(winexist("ahk_exe Workrave.exe")) {
WinActivate,ahk_exe Workrave.exe
CoordMode, Mouse , Window
Click ,Right,19,38
Send, {Down}{Enter}
CoordMode, Mouse , Screen
}
return
#ifWinActive