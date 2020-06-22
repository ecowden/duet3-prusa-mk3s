; homeall.g
; called to home all axes
;
M98 P"homex.g"
M98 P"homey.g"
M98 P"homez.g"

; Ensure StealthChop is tuned by making controlled moves
G1 X50 Y50 F4500