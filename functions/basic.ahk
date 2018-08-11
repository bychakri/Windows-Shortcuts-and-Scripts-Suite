OpenApp(class,path) {
	;MsgBox I'm in function
	if WinExist(class)
	{
		if WinActive(class) {
			WinMinimize
		}
		else
			WinMaximize
	}
	else
	    run, % path
	return
}

openChrome(url,profile) {
  ; Default / Person n
  run "C:\Program Files (x86)\Google\Chrome\Application\Chrome.exe"  --profile-directory="%profile%" "%url%"
}
