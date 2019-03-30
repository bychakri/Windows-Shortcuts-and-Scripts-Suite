#ifWinActive ahk_exe vivaldi.exe
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

>^Up::send ^+{Tab}
>^Down::send ^{Tab}
>^Left::send ^t
>^Right::send ^w
#IfWinActive

#ifWinActive ahk_exe chrome.exe
^!Numpad7::send ^+{Tab}
^!Numpad9::send ^{Tab}
^!Numpad4::send !{Left}
^!Numpad6::send ^+t
^!Numpad8::send ^w
^!Numpad5::send ^t

Media_Play_Pause::send {Space}
Media_Next::send {Left}
Media_Prev::send {Right}


F23 & up::send ^+{Tab}
F23 & down::send ^{Tab}
F23 & left::send ^w
F23 & right::send ^+t

>^Left::send ^+{Tab}
>^Right::send ^{Tab}
>^Up::send ^t
>^Down::send ^w
#IfWinActive