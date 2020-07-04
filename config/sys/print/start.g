; /sys/print/start.g
; Perform all steps to prepare printing, including
; home, prepare bed, prime nozzle, etc.
;
G90                              ; use absolute coordinates
M83                              ; extruder relative mode

G828                             ; home if not homed

M98 P"/sys/print/prepare-bed.g"  ; perform bed leveling, mesh, etc.

; prime nozzle
G81                              ; Go home ASAP
G1 X0 Y-3.0 F99999.0             ; go outside print area
G1 Z0.15                         ; lower extruder
G92 E0.0
G1 X60.0 E9.0 F1000.0            ; intro line
G1 X100.0 E12.5 F1000.0          ; intro line
G92 E0.0
