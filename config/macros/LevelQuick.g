; LevelQuick.g
; Probe the bed and auto-level Z Screws
;
M561                                 ; clear any existing bed transform

; Define 4 points in a counter=clockwise square around the bed corners
; ...first row...
G30 P0 X1       Y1.9     Z-99999    
G30 P1 X205     Y1.9     Z-99999  

; ...second row...
G30 P2 X205     Y205     Z-99999
G30 P3 X1       Y205     Z-99999  S2  ; ...after fourth point, tram bed  

; Bed may have shifted, so go home and re-home Z
G1 Z2                                 ; Lift Z a little
G1 X0 Y0 F15000                       ; Go home
G29 Z                                 ; Home Z
