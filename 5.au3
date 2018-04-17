#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
Global $Form1 = GUICreate("My GUI", 615, 437, 571, 221)
Global $Button1 = GUICtrlCreateButton("Button1", 128, 120, 75, 25)
Global $Checkbox1 = GUICtrlCreateCheckbox("Checkbox1", 224, 64, 97, 17)
Global $Radio1 = GUICtrlCreateRadio("Radio1", 56, 64, 113, 17)
Global $Label1 = GUICtrlCreateLabel("Label1", 120, 24, 36, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
#ASas###
#asdasdasd
#asda###
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			sleep(600)
			MsgBox(0,"Hello World","Hello!")

	EndSwitch

WEnd


Function Button1()
MsgBox(1,"Hello Son","Hello Boy!")


EndFunc


