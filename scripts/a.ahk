﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#include %A_ScriptDir%\functions\basic.ahk

a := "G:\Elonics\Breadboard\1. Light Sensor Circuit - Copy"
SplitPath, a,,dir
msgbox % dir
