; Level.g
; Probe the bed and auto-level Z Screws
;
M561                                 ; clear any existing bed transform

G28 Z                                ; Home Z

; Define 9 points in a snake around the bed, starting near (0,0)
; ...first row...
G30 P0 X24      Y6.9     Z-99999    
G30 P1 X126     Y6.9     Z-99999  
G30 P2 X228     Y6.9     Z-99999  

; ...second row...
G30 P3 X228     Y108.45  Z-99999  
G30 P4 X126     Y108.45  Z-99999  
G30 P5 X24      Y108.45  Z-99999  

; ...third row...
G30 P6 X24      Y210     Z-99999  
G30 P7 X126     Y210     Z-99999
G30 P8 X228     Y210     Z-99999  S2  ; ...after ninth point, tram bed

; G1 X0 Y0 F15000                       ; Go home
; G28 Z                                 ; Home Z
; G1 Z10                                ; Lift Z a bit off the bed