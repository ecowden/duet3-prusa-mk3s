; /sys/print/prepare-bed.g
; Prepare the bed for printing via auto-leveling, mesh compensation, etc.
;

if move.compensation.meshDeviation == null                                    ; Only level & mesh if not already performed
    echo "Leveling bed..."
    G32                                                                       ; level bed
    
    G1 Z5 F720                                                                ; lift Z off bed
    G1 X0 Y0 F15000                                                           ; go home ASAP

    G831                                                                      ; Adjust PINDA temp compensation for current temperature
    G28 Z                                                                     ; re-home Z
    echo "Measuring mesh..."
    G29                                                                       ; mesh compensation
else
    echo "Mesh already measured. Skipping..."

M376 H{ 40 * move.compensation.meshDeviation.deviation }                      ; taper compensation in relation to deviation
