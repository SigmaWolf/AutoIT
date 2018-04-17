HotKeySet("{UP}","up")
HotKeySet("{DOWN}","down")
HotKeySet("{LEFT}","left")
HotKeySet("{RIGHT}","right")

While 1=1
	Sleep(1000)
WEnd

Func down()
$pos=MouseGetPos()
MouseMove($pos[0],$pos[1]+1,1)
EndFunc

Func up()
$pos=MouseGetPos()
MouseMove($pos[0],$pos[1]-1,1)
EndFunc

Func left()
$pos=MouseGetPos()
MouseMove($pos[0]-1,$pos[1],1)
EndFunc

Func right()
$pos=MouseGetPos()
MouseMove($pos[0]+1,$pos[1],1)
EndFunc
