; =========================
; GLOBAL VARIABLES
; =========================
Running := false
LoadedIn := false
TargetColor := "0x00FF00"  ; example green (change if needed)
CoordMode, Pixel, Screen

; =========================
; GUI SETUP
; =========================
Gui, Add, Text, vStatusText w200 Center, Status: Idle
Gui, Add, Button, gStartMacro w100, Start
Gui, Add, Button, gStopMacro w100, Stop
Gui, Show, , TDS Macro Controller
return

; =========================
; GUI BUTTONS
; =========================
StartMacro:
Running := true
LoadedIn := false
GuiControl,, StatusText, Status: Running
Gosub, MainLoop
return

StopMacro:
Running := false
GuiControl,, StatusText, Status: Stopped
return

; =========================
; HOTKEYS
; =========================
F1::
Gosub, StartMacro
return

F2::
ExitApp

; =========================
; MAIN LOGIC
; =========================
MainLoop:
Loop
{

    Click, 1030, 870  ; play button
    Sleep, 100

    Click, 1202, 487 ; select special gamemodes
    Sleep, 100
    
    Click, 1173, 538  ; select pizza party
    Sleep, 100

     Click, 800, 485  ; select solo
    Sleep, 120000  ; wait for pizza to load in, 2 minutes

    Send, {Esc}
    Sleep, 500
    Send, {R}
    Sleep, 500
    Send, {Enter}
    Sleep 15000
    Send, {W down}
    Sleep, 1500
    Send, {W up}
    Sleep, 500

    Click, 1024, 200 ; ready button
    Sleep, 500

    Send, 1
    Sleep, 27000  ; wave 1

    Click, 1210, 629  ; 1st frost blaster
    Sleep, 21000  ; wave 2

    Click, 1080, 750  ; 1stupgrade frost blaster
    Sleep, 100
    Click, 1080, 750 ; make sure 1stfrost blaster is upgraded
    Sleep, 6900
    Send, 2
    Click, 948, 791 ; place 1st shotgunner
    Sleep, 15000 ; wave 3

    Send, 2
    Sleep, 100

    Click, 1140, 817  ; place 2nd shotgunner
    Sleep, 100

    Click, 1080, 750 ; upgrade shotgunner
    sleep, 100
    Click, 1080, 750 ; make sure shotgunner is upgraded
    Sleep, 10700 ; Wave 4

    Send, 2
    Sleep 100
    Click, 902 689 ; Place 3rd shotgunner
    Sleep 400,
    Click, 1080, 750 ; Upgrade shotgunner
    Sleep, 19500 ; Wave 5

    Send, 1
    Sleep 250
    Click, 1447, 654 ; Place 2nd Frost Blaster
    Sleep, 250
    Click, 1080, 750 ; Upgrade 2nd frost blaster
    Sleep, 18500 ; Wave 6
    
    Click, 1147, 671 ; Select shotgunner
    Sleep, 100
    Click, 1080, 750 ; upgrade shotgunner
    Sleep, 100
    Click, 1080, 750 ; make sure shotgunner is upgraded
    Sleep, 23900 ; Wave 7

    Click, 948, 661 ; select 2nd shotgunner
    Sleep, 100
    Click, 1080, 750 ; upgrade shotgunner
    Sleep, 100
    Click, 1080, 750 ; make sure shotgunner is upgraded
    Sleep, 2900 ; Wave 8
    Click, 893, 628 ; select shotgunner
    Sleep, 500
    Click, 1080, 750 ; upgrade shotgunner
    Sleep, 100
    Click, 1080, 750 ; make sure shotgunner is upgraded
    Sleep, 13400
    
    Click, 1216, 576 ; Select Frost Blaster
    Sleep, 1000
    Click, 1080, 750 ; Upgrade Frost Blaster
    Sleep, 12000 ; Wave 9
    Click, 1448, 596 ; Select Frost Blaster
    Sleep, 1000

    Click, 1080, 750 ; Upgrade Frost Blaster
    Sleep, 23000 ; Wave 10
    Click, 1218, 575 ; Select Frost Blaster
    Sleep, 2000
    Click, 1080, 750 ; Upgrade Frost Blaster

    Sleep, 19000
    Click, 1456, 956 ; Select Frost Blaster
    Sleep, 2000
    Click, 1080, 750

    Sleep, 160000 ; Time taken from last upgrade
    Click, 1048, 828 ; Click back to lobby button
    Sleep, 500
    Click 1075, 828 ; Click it again incase it bugged

    Sleep, 110000 ; Loading back into main game, 1 min 50 seconds minutes  
}
return

GuiClose:
ExitApp