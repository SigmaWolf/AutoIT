Global $freq=5000
HotKeySet("{DOWN}","decrease_freq")
HotKeySet("{UP}","increase_freq")
HotKeySet("{ESC}","close")

While 1=1
	Sleep(1000)
	Beep($freq,500)
WEnd

Func decrease_freq()
	$freq=$freq-100
EndFunc
Func increase_freq()
	$freq=$freq+100
EndFunc
Func close()
	Exit
EndFunc