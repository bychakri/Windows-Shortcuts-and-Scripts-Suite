#ifWinActive ahk_exe Fritzing.exe
^!Numpad7::
Send {Click}
Sleep, 200
Send {Del}
Return
^!Numpad9::send {Esc}
^!Numpad4::send ^z
^!Numpad6::send ^y
^!Numpad8::send Move{Enter}
^!Numpad5::send Delete{Enter}
#ifWinActive
