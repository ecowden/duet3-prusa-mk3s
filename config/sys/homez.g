; homez.g
; called to home the Z axis
;


G831                     ; Adjust PINDA temp compensation for current temperature

if move.axes[2].homed    ; Avoid unnecessary moves if re-homing
    if move.axes[2].machinePosition < 5
        G1 Z5            ; lift Z relative to current position
else                     ; unhomed, lift off the bed
    G91                  ; relative positioning
    G1 H2 Z5 F3000       ; lift Z relative to current position

G91                      ; relative positioning
G1 H1 Z-215.15 F3000     ; move Z down until the endstop is triggered
G892                     ; set Z position to probe trigger height (see G892.g)
G90
