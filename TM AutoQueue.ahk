; Activate "Gold" Window. Make a message box if it doesn't exist
ActivateWindow() { ; Make sure this matches the window you want!!!
	if WinExist("Gold")
		WinActivate, Gold ; use the window found above
	else{
		SoundPlay *48
		MsgBox, "Gold" window not found!
		SplashTextOff
		Exit
	}
}

PgUp::
	ActivateWindow()
	MouseClick, L, 230, 138, 1, 0 ; Start autonomous period
	SplashTextOn, 200, 90, AutoQueue, Autonomous period; driver control can be activated after autonomous ends
	
	KeyWait, PgUp, D  ; Wait for PageUp key to be pressed.
	ActivateWindow()
	MouseClick, L, 230, 138, 1, 0 ; Start driver control period
	SplashTextOn, 200, 100, AutoQueue, Driver control; will queue next match automatically after driver control ends (unless in elimination rounds)
	Sleep, 109000 ; Wait 1m 49sec	
	ActivateWindow()
	MouseClick, L, 80, 120, 1, 0 ; Queue next match
	MouseClick, L, 315, 88, 1, 0 ; Switch to intro screen
	SplashTextOff
return