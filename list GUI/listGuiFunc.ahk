#include %A_ScriptDir%\list GUI\initiate.ahk
#include %A_ScriptDir%\list GUI\loadConfig.ahk
#include %A_ScriptDir%\list GUI\updateConfig.ahk

; Show a Project Dialog
showProjectGui(ind) {
  global
  if (actProjGUIInd = ind) {
   CloseProjGui()
   return
   }
  CloseProjGui()
  actGUISection := projectModals[ind][1]
  actGUILabel := projectModals[ind][2]
  actProjGUIInd := ind
  actGUIFolder := %actGUISection%%actGUILabel%ParFol
  GuiCreateList()
}

; Show Normal File/Folder/App shortcuts
showGui(ind) {
global
if (actGUIInd = ind) {
 CloseGui()
 return
 }
CloseGui()
actGUISection := allModals[ind][1]
actGUILabel := allModals[ind][2]
actGUIInd := ind
GuiCreateList()
}


GuiCreateList() {
global
tmpList := %actGUISection%%actGUILabel%List
;msgbox % tmpList.MaxIndex() . actGUISection . actGUILabel
lvbh := tmpList.MaxIndex()-1
Gui -MinimizeBox -MaximizeBox -SysMenu -Caption
Gui Font, s16 q5 cNavy, Verdana
Gui Color, Black
Gui, Add, ListView, +BackgroundBlack cWhite -Multi R%lvbh% w%lviW%  +AltSubmit NoSortHdr gG%actGUISection% vGuiN%actGUIInd%, %actGUISection% - %actGUILabel%
for index, element in tmpList {
 ParentDir := StrSplit(element,"\")
 maxInd := StrSplit(element,"\").MaxIndex()
 folName := ParentDir[maxInd]
 if (folName = "")
  folName := element
 if (actGUISection = "Apps") or (actGUISection = "Scripts")
  folName := StrSplit(folName,".")[1]
 LV_Add("",folName)
 }
Gui, Add, Button, Hidden Default, %actGUISection%
dmy := lviW
wh := lvbh + 12
Gui Show, AutoSize ,  %actGUISection% - %actGUILabel%
return
}

#include %A_ScriptDir%\list GUI\guilistcontrol.ahk



CloseGui() {
global
Gui, Destroy
actGUIInd := 0
actProjGUIInd := 0
}

CloseProjGui() {
global
Gui, Destroy
actGUIInd := 0
actProjGUIInd := 0
}

GuiClose:
GuiEscape:
Gui, Destroy
actGUIInd := 0
actProjGUIInd := 0
