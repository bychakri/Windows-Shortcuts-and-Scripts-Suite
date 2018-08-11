lviW := 450
baseDir := A_WorkingDir
listGuiConfigFile := baseDir . "\config\listGuiShortcutsData.ini"
allModals := [["Folders","Primary"],["Files","Primary"],["Apps","Primary"],["Scripts","elonics"],["Apps","Secondary"]]
projectModals := [["Project","Breadboard","G:\2. Project Breadboad"],["Project","Elonics","G:\4. Elonics Website\Breadboard"]]


#NoEnv
SetWorkingDir %A_ScriptDir%
#SingleInstance force
SendMode Input
SetNumlockState, AlwaysOn
