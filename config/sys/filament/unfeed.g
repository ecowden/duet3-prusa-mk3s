; /sys/filament/unfeed.g
; Retract filament during unloading
; assumes that extruder is already at temperature
;
M83                     ; relative extruder moves
G1 E-100 F9999          ; Retract 100mm of filament ASAP
G1 E-200 F3000          ; Retract 100mm of filament at 50mm/sec
M400                    ; wait for completion
M292                    ; hide the message
G10 S0                  ; turn off heater
M84 E                   ; turn off extruder stepper
