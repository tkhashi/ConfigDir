#HotkeyInterval 100
; 主要なキーをホットキーとして検知可能にしておく
; A_ThisHotkey で検知可能にするための記述
; 検知だけしてAutoHotKey側では何も処理しない
;*~LCtrl::
;*~RCtrl::
;*~Ctrl::
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~LAlt::
*~RAlt::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
Return

; Ctrlを修飾キーとして扱うための準備
; Ctrlを押し続けている限りリピートせず待機
$Ctrl::
    startTime := A_TickCount
    KeyWait, Ctrl
    keyPressDuration := A_TickCount - startTime
    ; Ctrlを押している間に他のホットキーが発動した場合は入力しない
    ; Ctrlを長押ししていた場合も入力しない
    If (A_ThisHotkey == "$Ctrl" and keyPressDuration < 200) {
        Send,{Ctrl}
    }
    Return

<^Space::Send,{vk19} ;半角/全角切り換え
Pause::Send, {vkF2} ;ひらがな/カタカナ切り替え
PrintScreen::Send, {vk1D} ;無変換＝英数切り替え
<^H::Send, {BS}
<^J::Send, {left}
<^K::Send, {right}
<^N::Send, {down}
<^P::Send, {up}
<^[::Send,{Esc}
<^'::Send,{Esc}
<^;::Send,{Esc}
;>^W::Send, {RCtrl}{F4}
>^Q::Send, !{F4}
>^[::Send, {Browser_Back}
>^]::Send, {Browser_Forward}
;JISキーボード用
<^@::Send,{Esc}
<^vk70::Send, {AppsKey}

;起動時に上手く走ってくれないので割り当て
!g::Run, EscIMEOff.ahk
