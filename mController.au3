#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>

Global $aPos = MouseGetPos()
Global $x = $aPos[0]
Global $y = $aPos[1]

HotKeySet("{ESC}", "HotKeyPressed")
HotKeySet("{DOWN}", "HotKeyPressed")
HotKeySet("{UP}", "HotKeyPressed")
HotKeySet("{LEFT}", "HotKeyPressed")
HotKeySet("{RIGHT}", "HotKeyPressed")


HotKeySet("{NUMPAD4}", "HotKeyPressed")
HotKeySet("{NUMPAD5}", "HotKeyPressed")
HotKeySet("{NUMPAD6}", "HotKeyPressed")
HotKeySet("{NUMPAD8}", "HotKeyPressed")
HotKeySet("{NUMPAD2}", "HotKeyPressed")


;keeps catching active
While 1
    Sleep(2147483647) ;24 hours to keep active (in milliseconds).
WEnd

Func HotKeyPressed()
    Switch @HotKeyPressed ;hook
        Case "{ESC}"
            Exit
		Case "{DOWN}"
			$x = $x
			$y = $y + 10
			MouseMove($x, $y, $s)
		Case "{UP}"
			$x = $x
			$y = $y - 10
			MouseMove($x, $y, $s)
		Case "{LEFT}"
			$x = $x - 10
			$y = $y
			MouseMove($x, $y, $s)
		Case "{RIGHT}"
			$x = $x + 10
			$y = $y
			MouseMove($x, $y, $s)
		Case "{NUMPAD4}"
			MouseClick($MOUSE_CLICK_LEFT)
		Case "{NUMPAD5}"
			MouseClick($MOUSE_CLICK_MIDDLE)
		Case "{NUMPAD6}"
			MouseClick($MOUSE_CLICK_RIGHT)
		Case "{NUMPAD8}"
			MouseWheel($MOUSE_WHEEL_UP, $s)
		Case "{NUMPAD2}"
			MouseWheel($MOUSE_WHEEL_DOWN, $s)
EndFunc
