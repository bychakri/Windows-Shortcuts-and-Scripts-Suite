#ifWinActive ahk_exe eagle.exe
^!Numpad7::send ^
^!Numpad9::send {Esc}
^!Numpad4::send ^z
^!Numpad6::send ^y
^!Numpad8::send Move{Enter}
^!Numpad5::send Delete{Enter}
F23 & a:: send Add{Enter}
F23 & m:: send Move{Enter}
F23 & r:: send Rotate{Enter}
F23 & \:: send Mirror{Enter}
F23 & v:: send Value{Enter}
F23 & n:: send Name{Enter}
F23 & s:: send Smash{Enter}
F23 & i:: send Invoke{Enter}
F23 & l:: send Label{Enter}
F23 & w:: send Net{Enter}
F23 & c:: send Arc{Enter}
F23 & d:: send Delete{Enter}
F23 & g:: send Group{Enter}
#IfWinActive
