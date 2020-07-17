; homey.g
; called to home the Y axis
;

M561                                ; clear bed transform

M98 P"/sys/stepperHomingMode.g"     ; configure steppers for homing
G91                                 ; relative positioning
G1 H2 Z5 F300                       ; lift Z relative to current position
G1 H1 Y-221.5 F3000                 ; move quickly to Y axis endstop and stop there (only one pass)
M98 P"/sys/stepperPrintMode.g"      ; configure steppers for printing

; Lower Z back to original position
G91                                 ; relative positioning
G1 H2 Z-5 F3000                     ; lower Z again
G90                                 ; absolute positioning
