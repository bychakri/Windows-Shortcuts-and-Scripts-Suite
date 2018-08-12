GuiCreateTextBox(title) {
Global typedtext
typedtext :=
Gui, Destroy
Gui -MinimizeBox -MaximizeBox -SysMenu -Caption
Gui Font, s28 q5 cNavy, Verdana
Gui Color, Black
Gui, Add, text, +BackgroundBlack cWhite BackgroundTrans  -Multi  w800 +0x1 , %title%
Gui, Add, edit, +BackgroundBlack cBlack BackgroundTrans  -Multi  w800 gGtextbox vtypedtext +0x1
Gui, Add, Button, Hidden Default, TextBox
Gui +LastFound +AlwaysOnTop +ToolWindow
GuiHWND := WinExist()
WinSet, Transparent, 180
Gui Show, AutoSize , SomeLabel
WinWaitClose, ahk_id %GuiHWND%
return typedtext
}

Gtextbox:
return

ButtonTextBox:
Gui, Submit
closeTextBox()
return

closeTextBox() {
  Gui, Destroy
  return
}
