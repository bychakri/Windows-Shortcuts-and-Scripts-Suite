lviW := 450
baseDir := A_ScriptDir
listGuiConfigFile := baseDir . "\config\listGuiShortcutsData.ini"
allModals := [["Folders","Primary"],["Files","Primary"],["Apps","Primary"],["Scripts","elonics"],["Apps","Secondary"],["Scripts","Shortcuts"]]
projectModals := [["Project","Breadboard","G:\2. Project Breadboad"],["Project","Elonics","G:\Elonics\Breadboard"]]


#NoEnv
SetWorkingDir %A_ScriptDir%
#SingleInstance force
SendMode Input
SetNumlockState, AlwaysOn
