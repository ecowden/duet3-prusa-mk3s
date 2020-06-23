; bed.g
; called to perform automatic bed compensation via G32
;
M561                                 ; clear any existing bed transform

; Define 6 points around the bed sides
; ...right side...
G30 P1 X205     Y1.9     Z-99999  
G30 P2 X205     Y103.45  Z-99999
G30 P3 X205     Y205     Z-99999

; ...left side...
G30 P3 X1       Y205     Z-99999    
G30 P0 X1       Y103.45  Z-99999    
G30 P0 X1       Y1.9     Z-99999  S2  ; ...after last point, tram bed  
