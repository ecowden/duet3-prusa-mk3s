; /sys/print/prepare-bed.g
; Prepare the bed for printing via auto-leveling, mesh compensation, etc.
;
echo "Doing nothing to bed"

; G32                       ; level bed

; If leveling bed, re-home Z
; G81                       ; Go home ASAP
; G28 Z                     ; Re-home Z

; G829                      ; Mesh compensation