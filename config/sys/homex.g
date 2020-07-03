; homex.g
; called to home the X axis
;

M561                ; clear bed transform

M400                ; Make sure everything is stopped
M913 X50            ; reduce motor current to 50% to prevent belts slipping
G91                 ; relative positioning
G1 H2 Z5 F300       ; lift Z relative to current position
G1 H1 X-260 F3000   ; move quickly to X axis endstop and stop there (only one pass)
M400                ; make sure everything has stopped before we reset the motor currents
M913 X100           ; motor currents back to normal

; Lower Z back to original position
G91                 ; relative positioning
G1 H2 Z-5 F3000     ; lower Z again
G90                 ; absolute positioning
