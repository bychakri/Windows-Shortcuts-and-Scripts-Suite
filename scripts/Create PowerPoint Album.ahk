#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#include %A_ScriptDir%\functions\basic.ahk
setkeydelay,10,50

curproj := getCurProjFol("Elonics")
SplitPath, curproj,,basedir
SplitPath, basedir,,basedir

if !winExist("ahk_class PPTFrameClass")
  MsgBox Open a Presentation First

;Click on New Photo Album button in quick access ribbon
ControlClick, X195 Y22, ahk_class PPTFrameClass
sleep, 500
ControlClick, X57 Y84, Photo Album
WaitForWin("Insert New Pictures")
Clipboard := curproj . "\images\pngsteps"
send !d
send ^v{Enter}{Tab 4}
send ^a
send {Enter}
sleep, 5000
; Select Slide type dropdowm
ControlClick, X366 Y298, Photo Album
sleep, 500
; Select 1 Photo per slide
ControlClick, X186 Y31, ahk_class Net UI Tool Window
sleep, 500
; Check the caption below picture option
ControlClick, X28 Y164, Photo Album
sleep, 50
; Click on Theme Text Box
ControlClick, X128 Y339, Photo Album
sleep, 50
; Copy theme location & paste
Clipboard := basedir . "\Reference\Power Point Themes\wooden.thmx"
Send ^v
sleep, 50
; Enter
ControlClick, X490 Y392, Photo Album
sleep, 50