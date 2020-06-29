; GetReady.g
; Do all the things to get ready to print, or do other stuff
;
G828                    ; home printer if not homed

M98 P"/sys/print/bed.g" ; prepare bed

G81                     ; go home
