; homeall.g
; called to home all axes
;

M561                ; clear bed transform

; Prepare
M400                ; make sure everything is stopped
M913 X50            ; reduce X motor current to 50% to prevent belts slipping
M913 Y50            ; reduce Y motor current to 50% to prevent belts slipping
G91                 ; relative positioning
G1 H2 Z5 F300       ; lift Z relative to current position

; X & Y Axes
G1 H1 X-260 Y-221.5 F3000   ; move quickly to X axis endstop and stop there (only one pass)

; Move X,Y to 0,0 for Z homing
G90                 ; absolute positioning
G1 X0 Y0 F99999

; Z Axis
G831                ; adjust PINDA temp compensation for current temperature
G30                 ; use Z probe to home Z axis

; Cleanup
M400                ; make sure everything has stopped before we reset the motor currents
M913 X100           ; X motor currents back to normal
M913 Y100           ; Y motor currents back to normal
G90                 ; absolute positioning

M98 P"tune-stealth-chop.g"   ; tune Trinamic StealthChop motor parameters for best performance
