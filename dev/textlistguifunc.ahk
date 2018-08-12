GuiCreateTextListBox(labels,textList) {
global
Gui, Destroy
Gui -MinimizeBox -MaximizeBox -SysMenu -Caption
Gui Font, s28 q5 cNavy, Verdana
Gui Color, Black
for index, element in labels {
Gui, Add, text, +BackgroundBlack cWhite BackgroundTrans  -Multi  w800 +0x1 , %element%
Gui, Add, edit, +BackgroundBlack cBlack BackgroundTrans  -Multi  w800 gGtextListbox vtypedtext%index% +0x1 , % textList[index]
}
Gui, Add, Button, Hidden Default, TextListBox
Gui +LastFound +AlwaysOnTop +ToolWindow
GuiHWND := WinExist()
WinSet, Transparent, 180
Gui Show, AutoSize , SomeLabel
WinWaitClose, ahk_id %GuiHWND%
return
}

Gtextbox:
return

ButtonTextListBox:
Gui, Submit
closeTextListBox()
return

GtextListbox:
If (A_GuiEvent = "Normal"){
ind := StrSplit(A_GuiControl , "typedtext")
MsgBox % ind[2]
}
return

closeTextListBox() {
  Gui, Destroy
  return
}
