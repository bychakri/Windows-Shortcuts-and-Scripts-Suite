#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#include %A_ScriptDir%\functions\basic.ahk

i = 1
curproj := getCurProjFol("Elonics")
If WinExist("Fritzing.fzz* - Fritzing - [Breadboard View]") {
    WinActivate, Fritzing.fzz* - Fritzing - [Breadboard View]
    WaitForWin("ahk_exe Fritzing.exe")
;
    while WinExist("Fritzing.fzz* - Fritzing - [Breadboard View]")
    {
        SoundBeep
        SetKeyDelay, 10, 50
        send ^z
        waitForUndo()
        send ^z
        waitForUndo()
        send !fe{Right}{Down}{Down}{Enter}
        WaitForWin("Export SVG...")
        SetKeyDelay, -1, -1
        send % i++
        if (i=2) {
          send !d
          SendRaw % curproj . "\images\svgsteps"
          sleep, 50
          send !s
        }
        else {
          send {Enter}
        }
        WaitForWin("Fritzing.fzz")
    }
    RunWait, %A_ScriptDir%\batchfiles\svgtopng.bat %curproj%
    MsgBox The Entire Process is Done
}
else{
    Msgbox Please Open the Snapshots Fritzing File First
}
