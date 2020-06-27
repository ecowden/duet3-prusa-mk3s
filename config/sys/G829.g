; G829.g
; Perform a smart mesh compensation routine
;
G831                                            ; Adjust PINDA temp compensation for current temperature

if move.compensation.meshDeviation == null      ; Only measure mesh if not already performed
    G29                                         ; Measure height map and activate mesh compensation
else
    echo "Mesh compensation already performed"
