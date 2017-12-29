#ifWinActive ahk_exe Adobe Audition CC.exe
^!Numpad7::send {Space}
^!Numpad9::send ^x
^!Numpad4::send ^z
^!Numpad6::send ^y
^!Numpad8::send Move{Enter}
^!Numpad5::send Delete{Enter}
F23 & Up:: send +{WheelUp}
F23 & Down:: send +{WheelDown}
F23 & Left:: send {NumpadSub}
F23 & Right:: send {NumpadAdd}
#IfWinActive
