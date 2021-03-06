; /sys/print/prepare-bed.g
; Prepare the bed for printing via auto-leveling, mesh compensation, etc.
;

echo "Leveling bed..."
G32                                                                  ; level bed
G831                                                                 ; Adjust PINDA temp compensation for current temperature
G28 Z                                                                ; re-home Z

; if move.compensation.meshDeviation == null
;     echo "Measuring mesh..."
;     G831                                                             ; Adjust PINDA temp compensation for current temperature
;     G29                                                              ; mesh compensation
; else
;     echo "Bed mesh already measured. Skipping..."

; M376 H{ 40 * move.compensation.meshDeviation.deviation }             ; taper compensation in relation to deviation
