; GetReady.g
; Do all the things to get ready to print
;
G828                                                          ; home printer if not homed

M98 P"/sys/print/prepare-bed.g"                               ; perform leveling, mesh, etc.

G1 X{ move.axes[0].max/2 } Y{ move.axes[1].max/2 } Z50 F15000 ; go to center, a bit off the bed
