UpdateIni(tmpList) {
 global
 folstra := ""
 for index, element in tmpList
  folstra := folstra . "," . element
 IniWrite, % folstra , %listGuiConfigFile%, %actGUISection% , %actGUILabel%
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
 IniWrite, % folstra , %listGuiConfigFile%, %actGUISection% , %actGUILabel%
 LoadProjectIniList()
 CloseGui()
 GuiCreateList()
}
