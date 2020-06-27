; /sys/filament/feed.g
; Feed filament during loading
; assumes that extruder is already at temperature
;
M83                                      ; relative extruder moves
G1 E10 F400                              ; feed 10mm of filament at 400mm/min
G1 E60 F900                              ; feed 60mm of filament at 900mm/min
G1 E20 F100                              ; feed 20mm of filament at 100mm/min

G4 P1000                                 ; wait one second
G1 E-1 F1800                             ; retract 1mm of filament at 1800mm/min
M400                                     ; wait for completion
M292                                     ; hide the message
G10 S0                                   ; turn off heater
M84                                      ; turn off extruder stepper
