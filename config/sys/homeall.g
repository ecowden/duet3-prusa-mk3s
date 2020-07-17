; homeall.g
; called to home all axes
;

M561                                ; clear bed transform

G91                                 ; relative positioning

; Trinamic tuning
G1 H2 Z0.002 F360                   ; just enough movement to energize steppers
G4 P100                             ; pause for 50ms
G1 H2 Z5 F360                       ; lift Z relative to current position 

; Energise steppers and keep them still for a brief period,
; Then move steppers just a bit for Trinamic tuning
; TODO there is a small risk of collision. What's the best way to compensate?
G1 H2 X0.004 Y0.004 F4800           ; just enough movement to energize steppers
G4 P100                             ; pause for 100ms
G1 H2 X10 Y10 F6788                 ; short moderate-speed move for tuning

; Prepare
M98 P"/sys/stepperHomingMode.g"     ; configure steppers for homing

; X & Y Axes
G1 H1 X-260 Y-221.5 F3000           ; move to X & Y axis endstops and stop there (only one pass)

; put probe in center of bed
G90                                 ; absolute positioning
G1 X{ move.axes[0].max/2 - sensors.probes[0].offsets[0] } Y{ move.axes[1].max/2 - sensors.probes[0].offsets[1] } F99999
G831                                ; adjust PINDA temp compensation for current temperature
G30                                 ; use Z probe to home Z axis

; Cleanup
M98 P"/sys/stepperPrintMode.g"      ; configure steppers for printing
G90                                 ; absolute positioning
