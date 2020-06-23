; homeall.g
; called to home all axes
;

; Prepare
M400                ; Make sure everything is stopped
M913 X50            ; reduce X motor current to 50% to prevent belts slipping
M913 Y50            ; reduce Y motor current to 50% to prevent belts slipping
G91                 ; relative positioning
G1 H2 Z5 F300       ; lift Z relative to current position

; X & Y Axes
G1 H1 X-260 Y-221.5 F3000   ; move quickly to X axis endstop and stop there (only one pass)

; Move X,Y to 0,0 for Z homing
G90                 ; absolute positioning
G1 X0 Y0 F15000

; Z Axis
G91                  ; relative positioning
G1 H1 Z-215.15 F3000 ; move Z down until the endstop is triggered
G92 Z1.85            ; set Z position to axis minimum (you may want to adjust this)

; Cleanup
M400                ; make sure everything has stopped before we reset the motor currents
M913 X100           ; X motor currents back to normal
M913 Y100           ; Y motor currents back to normal
G90                 ; absolute positioning

M98 P"tune-stealth-chop.g"   ; tune Trinamic StealthChop motor parameters for best performance
