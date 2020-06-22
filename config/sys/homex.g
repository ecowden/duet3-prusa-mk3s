; homex.g
; called to home the X axis
;
M400                ; Make sure everything is stopped
M913 X50            ; reduce motor current to 50% to prevent belts slipping
G91                 ; relative positioning
G1 H2 Z5 F300       ; lift Z relative to current position
G1 H1 X-260 F3000   ; move quickly to X axis endstop and stop there (only one pass)
M400                ; make sure everything has stopped before we reset the motor currents
M913 X100           ; motor currents back to normal

; Ensure StealthChop is tuned by making controlled moves
M569 P0.0 D3
G90                 ; absolute positioning
G1 X50 F4500        ; Autotune StealthChop by making a small, medium-speed movement...
G1 X0 F4500         ; ...and going back home
G1 X50 F15000       ; Autotune StealthChop by making a small, high-speed movement...
G1 X0 F15000        ; ...and going back home

; Lower Z back to original position
G91                 ; relative positioning
G1 H2 Z-5 F3000     ; lower Z again
G90                 ; absolute positioning
