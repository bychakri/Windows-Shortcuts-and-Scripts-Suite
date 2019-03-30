>^Down::send !{F4}
^!r::Reload
^SPACE::  Winset, Alwaysontop, , A
#SPACE::
WinGet Style, Style, A
if(Style & 0xC00000) {
 WinSet, Style, -0xC00000, A
}
else {
 WinSet, Style, +0xC00000, A
}
return
F1::
InputBox, pTag,,Enter Tag,,136,121
if(winexist("ahk_exe TogglDesktop.exe")) {
WinActivate,ahk_exe TogglDesktop.exe
CoordMode, Mouse , Window
Click ,,245,65
Send, ^e
while True{
WinGetActiveTitle , Title
if (Title = "")
    if  winActive("ahk_exe TogglDesktop.exe"){
break
}
sleep,10
}
winactivate,ahk_exe TogglDesktop.exe
Click,,51,111
Clipboard = CurrentBreadboardProject
send,^v{Enter}
Click,,35,235
StringUpper, pTag, pTag
send,%pTag%{Enter 2}{Esc}
CoordMode, Mouse , Screen
}
return