; /sys/filament/unfeed.g
; Retract filament during unloading
; assumes that extruder is already at temperature
;
M83                     ; relative extruder moves
G1 E-100 F7000          ; Retract 100mm of filament at 7000mm/min
M400                    ; wait for completion
M292                    ; hide the message
G10 S0                  ; turn off heater
M84                     ; turn off extruder stepper
