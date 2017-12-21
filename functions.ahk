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
