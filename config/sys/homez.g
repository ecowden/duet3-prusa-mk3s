; homez.g
; called to home the Z axis
;

M561                     ; clear bed transform

if move.axes[2].homed    ; Avoid unnecessary moves if re-homing
    if move.axes[2].machinePosition < 5
        G1 Z3 F99999     ; lift Z relative to current position
else                     ; unhomed, lift off the bed
    G91                  ; relative positioning
    G1 H2 Z3 F99999      ; lift Z relative to current position

; put probe in center of bed
G90                      ; absolute positioning
G1 X{ move.axes[0].max/2 - sensors.probes[0].offsets[0] } Y{ move.axes[1].max/2 - sensors.probes[0].offsets[1] } F99999

G831                     ; adjust PINDA temp compensation for current temperature
G30                      ; use Z probe to home Z axis
G90                      ; absolute positioning
