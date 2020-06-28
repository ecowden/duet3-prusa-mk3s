; /sys/print/prepare-bed.g
; Prepare the bed for printing via auto-leveling, mesh compensation, etc.
;
echo "Doing nothing to bed"

G32                                                       ; level bed

; re-home Z
; Go home ASAP
if move.axes[0].machinePosition != 0 && move.axes[1].machinePosition != 0
    if move.axes[2].machinePosition < 5
        G1 Z5
    G1 X0 Y0 F15000

G28 Z                                                     ; re-home Z

G829                                                      ; mesh compensation
M376 H{ 40 * move.compensation.meshDeviation.deviation }  ; taper compensation in relation to deviation
