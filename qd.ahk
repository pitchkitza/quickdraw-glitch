#NoEnv
#SingleInstance Force
#KeyHistory 0
SetBatchLines -1
ListLines Off
SendMode Input

; Variables and key binds
NumberOfSwaps := 6 ;
Delay := 480 ;
SwapDelay := 40 ;
FirstWpnBind := "8" ; 
SecondWpnBind := "4" ; 
SprintBind := "7" ; 
ForwardBind := "6" ;
ShootBind := "5" ;

~*F2::
  Hotkey, ~*2, Toggle
return

~*2::
  Send, {}
 
  Loop
  {
    if (A_Index > NumberOfSwaps)
        break  ;
    Send, {%ShootBind%}
    Send, {%ForwardBind% down}{%SprintBind% down}{%SecondWpnBind%}
    Sleep, SwapDelay
    Send, {%SprintBind% up}{%ForwardBind% up}
    Sleep, Delay
    Send, {%ShootBind%}
    Send, {%ForwardBind% down}{%SprintBind% down}{%FirstWpnBind%}
    Sleep, SwapDelay
    Send, {%SprintBind% up}{%ForwardBind% up}
    Sleep, Delay
  }
return