lviW := 250
allModals := [["Folders","Primary"],["Files","Primary"],["Apps","Primary"]]
projectModals := [["Project","Breadboard"]]

ytd := "https://www.youtube.com/dashboard?o=U"
ytrt := "https://www.youtube.com/analytics?o=U#dt=nt,fe=17516,fr=lw-001,fs=17489;fc=0,fcr=0,r=realtime"
mail := "https://mail.google.com/mail/u/0/"
tusuraj := "http://www.hotstar.com/tv/tu-sooraj-main-saanjh-piyaji/13549/episodes/13388/9993"


#NoEnv
SetWorkingDir %A_ScriptDir%
#SingleInstance force
SendMode Input

WinClose, ahk_exe intercept.exe
Run, F:\Interception\intercept GUI\Modify External Keyboard.lnk
WinWait, Modify External Keyboard
Sleep, 100
WinHide, Modify External Keyboard

SetNumlockState, AlwaysOn
