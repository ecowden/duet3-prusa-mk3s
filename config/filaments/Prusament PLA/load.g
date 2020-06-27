; filaments/Prusament PLA/load.g
if tools[0].active[0] < 200                                    ; leave temp alone if already set hot enough
    G10 S200                                                   ; set extruder temp to 200C

M291 P"Heating nozzle..." R"Loading Prusament PLA" T5          ; display heating message
M116                                                           ; wait to reach temp

M291 P"Feeding filament..." R"Loading Prusament PLA" T5        ; display feed message
M98 P"/sys/filament/feed.g"                                    ; invoke feed movement script