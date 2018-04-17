#include <GUIConstantsEx.au3>
#include <ProgressConstants.au3>
#include <SliderConstants.au3>
#include <WindowsConstants.au3>
#include <SliderConstants.au3>

Global $Slider_data=0
Global $Slider1_data=0
Global $Slider2_data=0
Global $Slider3_data=0
Global $Slider4_data=0

Global $Form1 = GUICreate("My GUI",625,222)
Global $Slider1 = GUICtrlCreateSlider(0,96,150,45)
Global $Slider2 = GUICtrlCreateSlider(0,144,150,45)
Global $Slider3 = GUICtrlCreateSlider(0,0,150,45)
Global $Slider4 = GUICtrlCreateSlider(0,48,150,45)
Global $Progress1 = GUICtrlCreateProgress(0,192,622,17)
 GUISetState(@SW_SHOW,$Form1)

While 1
	$nMsg=GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Slider1
			$Slider1_data=GUICtrlRead($Slider1)
			slider_Average()
			GUICtrlSetData($Progress1,$Slider1_data)
		Case $Slider2
			$Slider2_data=GUICtrlRead($Slider2)
			slider_Average()
			GUICtrlSetData($Progress1,$Slider2_data)
		Case $Slider3
			$Slider3_data=GUICtrlRead($Slider3)
			slider_Average()
			GUICtrlSetData($Progress1,$Slider3_data)
		Case $Slider4
			$Slider4_data=GUICtrlRead($Slider4)
			slider_Average()
			GUICtrlSetData($Progress1,$Slider4_data)

	EndSwitch

WEnd

Func slider_Average()
	$Slider_data = $Slider1_data + $Slider2_data + $Slider3_data + $Slider4_data
	$Slider_data = $Slider_data / 4

	EndFunc
