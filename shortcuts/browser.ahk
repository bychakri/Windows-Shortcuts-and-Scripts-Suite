#ifWinActive ahk_exe chrome.exe
^!Numpad7::send ^+{Tab}
^!Numpad9::send ^{Tab}
^!Numpad4::send !{Left}
^!Numpad6::send ^+t
^!Numpad8::send ^w
^!Numpad5::send ^t

F23 & up::send ^+{Tab}
F23 & down::send ^{Tab}
F23 & left::send ^w
F23 & right::send ^+t

>^Left::send ^+{Tab}
>^Right::send ^{Tab}
>^Up::send ^t
>^Down::send ^w
#IfWinActive
