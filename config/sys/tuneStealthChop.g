
; Ensure X & Y motors are in StealthChop mode
M569 P0.0 D3        ; Put X in StealthChop
M569 P0.1 D3        ; Put Y in StealthChop

; Ensure StealthChop is tuned by making controlled moves
G1 X75 Y75 F4500    ; Autotune StealthChop by making a small, medium-speed movement...
G1 X0  Y0  F4500    ; ...and going back home
G1 X100 Y100 F15000 ; Autotune StealthChop by making a small, high-speed movement...
G1 X0  Y0 F15000    ; ...and going back home
