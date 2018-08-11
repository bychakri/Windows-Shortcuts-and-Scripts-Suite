#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#include %A_ScriptDir%\functions\basic.ahk

a = ,G:\2. Project Breadboad,H:\CAT 2017,C:\,F:\Interception\AHKs,F:\Windows PC,G:\8. electronicshub.org,G:\4. Elonics Website\Keyword Research,F:\Shortcut Scripts,G:\4. Elonics Website,G:\3. Elonics Channel,G:\4. Elonics Website,G:\4. Elonics Website\Breadboard
b = 1,5,3,4
sort,a,\ D,
MsgBox % SubStr(a,1 
