openChrome(url,profile) {
  ; Default / Profile n
  run "C:\Program Files (x86)\Google\Chrome\Application\Chrome.exe"  --profile-directory="%profile%" "%url%"
}

getCurProjFol(projName) {
    IniRead, ProjFol, % StrReplace(A_ScriptDir, "scripts") . "config\listGuiShortcutsData.ini", CurrentProject, % projName
    return ProjFol
}

waitForUndo() {
sleep, 50
i = 1
j = 1
isFree = "Yes"
loop {
    if (A_Cursor="Wait") {
        isFree = "No"
    }
    ACUR%i% = %A_Cursor%
    sleep, 5
    i++
    if (i>10) {
        if isFree = "Yes"
            break
        else {
            j++
            i = 1
            isFree = "Yes"
        }
    }
}
}

WaitForWin(w) {
    while !WinActive(w) {
         sleep, 20
    }
}
