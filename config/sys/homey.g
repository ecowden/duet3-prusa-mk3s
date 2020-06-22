; homey.g
; called to home the Y axis
;
M400                ; Make sure everything is stopped
M913 Y50            ; reduce motor current to 50% to prevent belts slipping
G91                 ; relative positioning
G1 H2 Z5 F300       ; lift Z relative to current position
G1 H1 Y-221.5 F3000 ; move quickly to Y axis endstop and stop there (only one pass)
M400                ; make sure everything has stopped before we reset the motor currents
M913 Y100           ; motor currents back to normal

; Ensure StealthChop is tuned by making controlled moves
M569 P0.1 D3
G90                 ; absolute positioning
G1 Y50 F4500        ; Autotune StealthChop by making a small, medium-speed movement...
G1 Y0 F4500       ; ...and going back home
G1 Y50 F15000        ; Autotune StealthChop by making a small, high-speed movement...
G1 Y0 F15000       ; ...and going back home

; Lower Z back to original position
G91                 ; relative positioning
G1 H2 Z-5 F3000     ; lower Z again
G90                 ; absolute positioning
