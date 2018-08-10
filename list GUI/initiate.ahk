; Initiate normal File & Folder Dialog Boxes
for index, ele in allModals {
  actGUISection := ele[1]
  actGUILabel := ele[2]
  ; Iterate through all File, Project or App shortcuts data and load them to an array
  LoadIniList()
}

; Initiate Project Type (It allows to select a specific folder &
; displays changeable shortcuts of files/folders inside it.
; The added/updated shortcuts pass on to any folder selected) Dialog Boxes
for index, ele in projectModals {
  actGUISection := ele[1]
  actGUILabel := ele[2]
  actProjectDir := ele[3]
  ; Iterate through all File, Project or App shortcuts data and load them to an array
  LoadprojectIniList()
}
