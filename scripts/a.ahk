#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#include %A_ScriptDir%\functions\basic.ahk

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
}
Click,,51,111
Clipboard = CurrentBreadboardProject
send,^v{Enter}
Click,,35,235
StringUpper, pTag, pTag
send,%pTag%{Enter 2}{Esc}
CoordMode, Mouse , Screen
}
return