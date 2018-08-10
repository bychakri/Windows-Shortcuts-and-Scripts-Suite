; Load config of Current Projects and their Shortcuts
LoadprojectIniList() {
  global
  ; Read Shortcuts of the current project
  IniRead, theData, %listGuiConfigFile%, %actGUISection%, %actGUILabel%, % ",\0. Flashing LED"
  ; Read the current project
  ;********************************* Need to change breadboard to a variable
  IniRead, parFolder, %listGuiConfigFile%, CurrentProject, %actGUILabel%, % "G:\2. Project Breadboad\17. Light Sensor"
  ;MsgBox % theData
  tmpList := StrSplit(theData,",")
  tmpList.Delete(1)
  %actGUISection%%actGUILabel%RelList := tmpList.Clone()
  %actGUISection%%actGUILabel%ParFol := parFolder
  %actGUISection%%actGUILabel%ProjFol := actProjectDir
  for ind, ele in tmpList {
    tmpList[ind] := parFolder . ele
  }
  %actGUISection%%actGUILabel%List := tmpList
}

; Load config of Current File/Folder Shortcuts
LoadIniList() {
  global
  IniRead, theData, %listGuiConfigFile%, %actGUISection%, %actGUILabel%, % ",dummyRow"
  tmpList := StrSplit(theData,",")
  tmpList.Delete(1)
  %actGUISection%%actGUILabel%List := tmpList
}
