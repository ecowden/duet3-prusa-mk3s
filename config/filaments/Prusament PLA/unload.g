; filaments/Prusament PLA/load.g
if tools[0].active[0] < 200                                    ; leave temp alone if already set hot enough
    G10 S200                                                   ; set extruder temp to 200C

M291 P"Heating nozzle..." R"Unloading Prusament PLA" T5          ; display heating message
M116                                                           ; wait to reach temp

M291 P"Retracting filament..." R"Unloading Prusament PLA" T5   ; display unfeed message
M98 P"/sys/filament/unfeed.g"                                  ; invoke unfeed movement script