GProject:
If (A_GuiEvent = "Normal"){
 goto ButtonOK
}
Else If (A_GuiEvent = "K"){
 key := GetKeyName(Format("vk{:x}", A_EventInfo))
 if (key = "NumpadDel") {
  tmpList := %actGUISection%%actGUILabel%RelList
  tmpList.Delete(LV_GetNext(0, "Focused")+1)
  UpdateProjectIni(tmpList)
  }
 else if (key = "NumpadAdd") {
  FileSelectFile, File, 32 , % %actGUISection%%actGUILabel%ParFol
  if (File <> "") {
   tmpList := %actGUISection%%actGUILabel%RelList
   tmpList.Insert(StrReplace(File,%actGUISection%%actGUILabel%ParFol,""))
;   MsgBox % StrReplace(File,%actGUISection%%actGUILabel%ParFol,"")
   UpdateProjectIni(tmpList)
   }
 }
 else if (key = "NumpadMult") {
  FileSelectFolder, Folder, % %actGUISection%%actGUILabel%ParFol
  if (Folder <> "") {
   tmpList := %actGUISection%%actGUILabel%RelList
   tmpList.Insert(StrReplace(Folder,%actGUISection%%actGUILabel%ParFol,""))
   UpdateProjectIni(tmpList)
   }
 }
 else if (key = "NumpadDiv") {
 changeCurProject()
 }
}
return

GFiles:
If (A_GuiEvent = "Normal"){
 goto ButtonOK
}
Else If (A_GuiEvent = "K"){
 key := GetKeyName(Format("vk{:x}", A_EventInfo))
 if (key = "NumpadDel") {
  tmpList := %actGUISection%%actGUILabel%List
  tmpList.Delete(LV_GetNext(0, "Focused")+1)
  UpdateIni(tmpList)
  }
 else if (key = "NumpadAdd") {
  FileSelectFile, File, 32
  if (File <> "") {
   tmpList := %actGUISection%%actGUILabel%List
   tmpList.Insert(File)
   UpdateIni(tmpList)
   }
 }
}
Return

GApps:
If (A_GuiEvent = "Normal"){
 goto ButtonOK
}
Else If (A_GuiEvent = "K"){
 key := GetKeyName(Format("vk{:x}", A_EventInfo))
 if (key = "NumpadDel") {
  tmpList := %actGUISection%%actGUILabel%List
  tmpList.Delete(LV_GetNext(0, "Focused")+1)
  UpdateIni(tmpList)
  }
 else if (key = "NumpadAdd") {
  FileSelectFile, File, 32 ,C:\ProgramData\Microsoft\Windows\Start Menu\Programs
  if (File <> "") {
   tmpList := %actGUISection%%actGUILabel%List
   tmpList.Insert(File)
   UpdateIni(tmpList)
   }
 }
}
Return

GScripts:
If (A_GuiEvent = "Normal"){
 goto ButtonOK
}
Else If (A_GuiEvent = "K"){
 key := GetKeyName(Format("vk{:x}", A_EventInfo))
 if (key = "NumpadDel") {
  tmpList := %actGUISection%%actGUILabel%List
  tmpList.Delete(LV_GetNext(0, "Focused")+1)
  UpdateIni(tmpList)
  }
 else if (key = "NumpadAdd") {
  FileSelectFile, File, 32 , % A_ScriptDir + "\scripts"
  if (File <> "") {
   tmpList := %actGUISection%%actGUILabel%List
   tmpList.Insert(File)
   UpdateIni(tmpList)
   }
 }
}
Return

GFolders:
If (A_GuiEvent = "Normal"){
 goto ButtonOK
}
Else If (A_GuiEvent = "K"){
 key := GetKeyName(Format("vk{:x}", A_EventInfo))
 if (key = "NumpadDel") {
  tmpList := %actGUISection%%actGUILabel%List
  tmpList.Delete(LV_GetNext(0, "Focused")+1)
  UpdateIni(tmpList)
  }
 else if (key = "NumpadAdd") {
  FileSelectFolder, Folder
  if (Folder <> "") {
   tmpList := %actGUISection%%actGUILabel%List
   tmpList.Insert(Folder)
   UpdateIni(tmpList)
   }
 }
}
Return

ButtonOK:
GuiControlGet, FocusedControl, FocusV
if LV_GetNext(0, "Focused") = 0
    return
run, % """" . %actGUISection%%actGUILabel%List[LV_GetNext(0, "Focused")+1] . """"
CloseGui()
return
