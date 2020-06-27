; bed.g
; called to perform automatic bed compensation via G32
;
M561                                   ; clear any existing bed transform

G831                                   ; Re-configure PINDA temp compensation for current temp range

; Define 6 points around the bed sides
; ...right side...
G30 P1 X228     Y6        Z-99999      ; Probe the given point
G30 P2 X228     Y108      Z-99999
G30 P3 X228     Y210      Z-99999

; ...left side...
G30 P3 X24       Y210     Z-99999
G30 P0 X24       Y108     Z-99999
G30 P0 X24       Y6       Z-99999  S2  ; ...after last point, tram bed  
