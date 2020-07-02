; Center.g
; Place the PINDA in the center
; 
if move.axes[2].machinePosition < 5       ; if Z is low...
    G1 Z5                                 ; ...raise Z off the bed

G1 X100 Y102 F15000                       ; move to put PINDA over center screw
