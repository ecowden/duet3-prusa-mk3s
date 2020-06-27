; G831.g
; Configure PINDA for current temperature
;
; The PINDA's inductive probe responds differently at different temps, and the 
; relationship is not linear. Use a different offset and C-value depending on 
; if the current temperature is in the low or high end of the range.
;
if sensors.analog[2].lastReading < 42                     ; low-temp range
    G31 P500 X23 Y5 Z0.65 H2 S25.1 C0.023                 ; set Z probe trigger value, offset and trigger height with PINDA temp compensation
    echo "PINDA set for LOW temp range"
else                                                      ; high-temp range
    G31 P500 X23 Y5 Z{ 0.65 + 0.4377 } H2 S43.8 C0.045    ; set Z probe trigger value, offset and trigger height with PINDA temp compensation
    echo "PINDA set for HIGH temp range"