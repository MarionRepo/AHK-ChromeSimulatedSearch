;open chrome
;wait 500ms
;click search bar (mouse down mouse up) -- not needed because ^t autohighlights the search bar when a new tab is opened
;type something into search bar (wait 230ms inbetween each letter to simulate real typing)
;hit enter

^z:: ;hotkey > Ctrl+z
{
    if WinExist("ahk_exe chrome.exe")
	{
		WinActivate("ahk_exe chrome.exe")
		Sleep(100) ;if chrome is minimized it might take a moment to bring it up
	}
    Send("^t")
	Sleep(500) ;give time to switch and open a tab
	searchStr := "todays weather"
	Loop Parse, searchStr
	{
		Send(A_LoopField)
		Sleep(230)
	}
	Send("{Enter}")
}