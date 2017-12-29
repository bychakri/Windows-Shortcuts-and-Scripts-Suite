#c::send !{F4}
^!Numpad8::send !{F4}
Numpad0 & Numpad1::showProjectGui(1)
Numpad0 & Numpad2::showGui(3)
Numpad0 & Numpad3::
Numpad0 & Numpad4::showGui(2)
Numpad0 & Numpad5::showGui(1)
Numpad0 & Numpad6::
Numpad0 & Numpad7::
Numpad0 & Numpad8::
Numpad0 & Numpad9::
Numpad0::Send {Numpad0}

F23 & F12::OpenApp("ahk_exe chrome.exe",A_ProgramsCommon . "\Google Chrome.lnk")
F23 & F11::run explorer.exe
F23 & F1::
F23 & `::run explorer.exe F:\m3u8
F23 & numlock::run, %ytd%
F23 & Numpad9::showGui(1)
F23 & Numpad6::showGui(2)
F23 & numpadDiv::showGui(2)
F23 & numpadMult::showProjectGui(1)
F23 & NumpadSub::showGui(3)
F23 & NumpadAdd::OpenApp("ahk_exe chrome.exe",A_ProgramsCommon . "\Google Chrome.lnk")

F23 & z::
MsgBox, press okay to reload script
WinClose, ahk_exe intercept.exe
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return
