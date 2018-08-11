UpdateIni(tmpList) {
 global
 folstra := ""
 for index, element in tmpList
  folstra := folstra . "," . element
 ; Sort after removing first comma
 list := SubStr(folstra,2)
 sort,list,\ D,
 IniWrite, % "," . list , %listGuiConfigFile%, %actGUISection% , %actGUILabel%
 LoadIniList()
 CloseGui()
 GuiCreateList()
}

changeCurProject() {
  global
; MsgBox % %actGUISection%%actGUILabel%ProjFol
  FileSelectFolder, Folder, % %actGUISection%%actGUILabel%ProjFol
  if (Folder <> "") {
    IniWrite,% Folder , %listGuiConfigFile%, CurrentProject, %actGUILabel%
    %actGUISection%%actGUILabel%ParFol := Folder
    CloseGui()
    LoadprojectIniList()
    GuiCreateList()
   }
}

UpdateProjectIni(tmpList) {
 global
 folstra := ""
 for index, element in tmpList {
  folstra := folstra . "," . element
  }
 ; Sort after removing first comma
 list := SubStr(folstra,2)
 sort,list,\ D,
 IniWrite, % "," . list , %listGuiConfigFile%, %actGUISection% , %actGUILabel%
 LoadProjectIniList()
 CloseGui()
 GuiCreateList()
}
