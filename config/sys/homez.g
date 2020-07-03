; homez.g
; called to home the Z axis
;

M561                     ; clear bed transform

if move.axes[2].homed    ; Avoid unnecessary moves if re-homing
    if move.axes[2].machinePosition < 5
        G1 Z5            ; lift Z relative to current position
else                     ; unhomed, lift off the bed
    G91                  ; relative positioning
    G1 H2 Z5 F3000       ; lift Z relative to current position

G831                     ; adjust PINDA temp compensation for current temperature
G30                      ; use Z probe to home Z axis
G90                      ; absolute positioning
