#ifWinActive ahk_exe eagle.exe
^!Numpad7::send ^
^!Numpad9::send {Esc}
^!Numpad4::send ^z
^!Numpad6::send ^y
^!Numpad8::send Move{Enter}
^!Numpad5::send Delete{Enter}
Tab & a:: send Add{Enter}
Tab & m:: send Move{Enter}
Tab & r:: send Rotate{Enter}
Tab & \:: send Mirror{Enter}
Tab & v:: send Value{Enter}
Tab & n:: send Name{Enter}
Tab & s:: send Smash{Enter}
Tab & i:: send Invoke{Enter}
Tab & l:: send Label{Enter}
Tab & w:: send Net{Enter}
Tab & c:: send Arc{Enter}
Tab & d:: send Delete{Enter}
Tab & g:: send Group{Enter}
#IfWinActive
