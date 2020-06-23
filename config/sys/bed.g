; bed.g
; called to perform automatic bed compensation via G32
;
; Perform a quick auto-leveling with Z-Screws, 
; Then probe a 7x7 mesh and enable compensation
;
M561                        ; clear any bed transform
; M98 P"level.g"              ; level the bed via Z-screws
; G1 X10 Y10 F15000           ; Get close to home quickly, because homing moves are slow
; M98 P"homeall-no-tuning.g"  ; Perform a quick homing since axes move
G29                         ; probe the bed and enable compensation
; G1 Z5 F1000                 ; Lift a little off Z
; G1 X0 Y0 F15000             ; Go home

