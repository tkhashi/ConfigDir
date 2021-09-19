#HotkeyInterval 100

>^I::Send, #1
>^0::Send, #2
>^J::Send, #3
^!S::Send, #4
^!L::Send, #5
^!E::Send, #6
^!T::Send, #7
^!Z::Send, #8
;AHK全部リロード
^!R::
	Run, "C:\Users\Kazuhiro Takahashi\work\ConfigDir\AHK\TypeMouseControl.ahk" 
	Sleep, 50
	Send, y
	Run, "C:\Users\Kazuhiro Takahashi\work\ConfigDir\AHK\Remap.ahk"
	Sleep, 50
	Send, y
	Run, "C:\Users\Kazuhiro Takahashi\work\ConfigDir\AHK\EscIMEOff.ahk"
	Sleep, 50
	Send, y
	Run, "C:\Users\Kazuhiro Takahashi\work\ConfigDir\AHK\AppHotKey.ahk"
	Sleep, 50
	Send, y
	
