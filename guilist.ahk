for index, ele in allModals {
  actGUISection := ele[1]
  actGUILabel := ele[2]
  LoadIniList()
  ;MsgBox % FoldersPrimaryList.MaxIndex() . ele[1] . ele[2]
}

for index, ele in projectModals {
  actGUISection := ele[1]
  actGUILabel := ele[2]
  LoadprojectIniList()
  ;MsgBox % FoldersPrimaryList.MaxIndex() . ele[1] . ele[2]
}

showProjectGui(ind) {
  global
  if (actGUIInd = ind) {
   CloseGui()
   return
   }
  CloseGui()
  actGUISection := projectModals[ind][1]
  actGUILabel := projectModals[ind][2]
  actGUIInd := ind
  actGUIFolder := %actGUISection%%actGUILabel%ParFol
  GuiCreateList()
}


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

LoadprojectIniList() {
  global
  IniRead, theData, config.ini, %actGUISection%, %actGUILabel%, % ",\0. Flashing LED"
  IniRead, parFolder, config.ini, CurrentProject, Breadboard, % "G:\2. Project Breadboad\17. Light Sensor"
  ;MsgBox % theData
  tmpList := StrSplit(theData,",")
  tmpList.Delete(1)
  %actGUISection%%actGUILabel%RelList := tmpList.Clone()
  %actGUISection%%actGUILabel%ParFol := parFolder
  for ind, ele in tmpList {
    tmpList[ind] := parFolder . ele
    ;MsgBox % tmpList[ind] . "----" . parFolder
  }
  %actGUISection%%actGUILabel%List := tmpList
}

LoadIniList() {
  global
  ;msgbox % "InList" . actGUISection . actGUILabel
  IniRead, theData, config.ini, %actGUISection%, %actGUILabel%, % ",dummyRow"
  tmpList := StrSplit(theData,",")
  tmpList.Delete(1)
  %actGUISection%%actGUILabel%List := tmpList
}

changeCurProject() {
  global
  FileSelectFolder, Folder,G:\2. Project Breadboad
  if (Folder <> "") {
    IniWrite,% Folder , config.ini, CurrentProject, %actGUILabel%
    %actGUISection%%actGUILabel%ParFol := Folder
    CloseGui()
    LoadprojectIniList()
    GuiCreateList()
   }
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
 LV_Add("",folName)
 }
Gui, Add, Button, Hidden Default, OK
dmy := lviW
wh := lvbh + 12
Gui Show, AutoSize ,  %actGUISection% - %actGUILabel%
return
}

#include guilistcontrol.ahk

UpdateIni(tmpList) {
 global
 folstra := ""
 for index, element in tmpList
  folstra := folstra . "," . element
 IniWrite, % folstra , config.ini, %actGUISection% , %actGUILabel%
 LoadIniList()
 CloseGui()
 GuiCreateList()
}
UpdateProjectIni(tmpList) {
 global
 folstra := ""
 for index, element in tmpList {
  folstra := folstra . "," . element
  }
 IniWrite, % folstra , config.ini, %actGUISection% , %actGUILabel%
 LoadProjectIniList()
 CloseGui()
 GuiCreateList()
}



CloseGui() {
global
Gui, Destroy
actGUIInd := 0
}

GuiClose:
GuiEscape:
Gui, Destroy
actGUIInd := 0
