#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

Opt("GUIOnEventMode", 1) ; Change to OnEvent mode

Local $hMainGUI = GUICreate("Hello World", 200, 100)
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEButton")
GUICtrlCreateLabel("Hello world! How are you?", 30, 10)
Local $iOKButton = GUICtrlCreateButton("OK", 70, 50, 60)
GUICtrlSetOnEvent($iOKButton, "OKButton")
GUISetState(@SW_SHOW, $hMainGUI)

While 1
    Sleep(100) ; Sleep to reduce CPU usage
WEnd

Func OKButton()
    ; Note: At this point @GUI_CtrlId would equal $iOKButton,
    ; and @GUI_WinHandle would equal $hMainGUI
    MsgBox($MB_OK, "GUI Event", "You selected OK!")
EndFunc   ;==>OKButton

Func CLOSEButton()
    ; Note: At this point @GUI_CtrlId would equal $GUI_EVENT_CLOSE,
    ; and @GUI_WinHandle would equal $hMainGUI
    MsgBox($MB_OK, "GUI Event", "You selected CLOSE! Exiting...")
    Exit
EndFunc   ;==>CLOSEButton