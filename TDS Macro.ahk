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

    Send, {W down}
    Sleep, 1500
    Send, {W up}
    Sleep, 500

    Click, 1024, 200 ; ready button
    Sleep, 500

    Send, 1
    Sleep, 27000  ; wave 1

    Click, 1210, 629  ; frost blaster
    Sleep, 21000  ; wave 2

    Click, 1093, 753  ; upgrade frost blaster
    Sleep, 7000
    Click, 948, 791 ; place 1st shotgunner
    Sleep, 15000 ; wave 3

    Send, 2
    Sleep, 100

    Click, 1140, 817  ; place 2nd shotgunner
    Sleep, 100

    Click, 1206, 859 ; upgrade shotgunner
    Sleep, 10800 ; Wave 4

    Click, 902 689 ; Place 3rd shotgunner
    Sleep 500,
    Click, 1108, 747 ; Upgrade shotgunner
    Sleep, 19500 ; Wave 5

    Click, 1447, 654 ; Place 2nd Frost Blaster
    Sleep, 500
    Click, 1108, 747 ;Upgrade frost blaster
    Sleep, 18500 ; Wave 6
    
    Click, 1147, 671 ; Select shotgunner
    Sleep, 100
    Click, 1108, 747 ; upgrade shotgunner
    Sleep, 24000 ; Wave 7

    Click, 948, 661 ; select 2nd shotgunner
    Sleep, 100
    Click, 1108, 747 ; upgrade shotgunner
    Sleep, 3000 ; Wave 8
    Click, 893, 628 ; select shotgunner
    Sleep, 500
    Click, 1108, 747 ; upgrade shotgunner
    Sleep, 13500
    
    Click, 1216, 576 ; Select Frost Blaster
    Sleep, 1000
    Click, 1108, 747 ; Upgrade Frost Blaster
    Sleep, 12000 ; Wave 9
    Click, 1448, 596 ; Select Frost Blaster
    Sleep, 1000

    Click, 1108, 747 ; Upgrade Frost Blaster
    Sleep, 23000 ; Wave 10
    Click, 1218, 575 ; Select Frost Blaster
    Sleep, 2000
    Click, 1108, 747 ; Upgrade Frost Blaster

    Sleep, 19000
    Click, 1456, 956 ; Select Frost Blaster
    Sleep, 2000
    Click, 1108, 747

    Sleep, 160000 ; Time taken from last upgrade
    Click, 1048, 828 ; Click back to lobby button
    Sleep, 500
    Click 1075, 828 ; Click it again incase it bugged

    Sleep, 150000 ; Loading back into main game, 2 1/2 minutes  
}
return

GuiClose:
ExitApp