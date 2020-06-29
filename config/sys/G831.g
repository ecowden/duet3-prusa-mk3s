; G831.g
; Configure PINDA for current temperature
;
; The PINDA's inductive probe responds differently at different temps, and the 
; relationship is not linear. Use a different offset and C-value depending on 
; the current temperature range.
;
; These values are based on the default offsets from
; https://github.com/prusa3d/Prusa-Firmware/blob/MK3_3.9.0/Firmware/Dcodes.cpp#L507-L513
;
if sensors.analog[2].lastReading < 35       ;       temp < 35°C, no compensation
    G31 Z{ 0.65 + 0.000 } H2 S35 C0.000     ;
elif sensors.analog[2].lastReading < 40     ; 35 <= temp < 40
    G31 Z{ 0.65 + 0.000 } H2 S35 C0.004     ; 
elif sensors.analog[2].lastReading < 45     ; 40 <= temp < 45
    G31 Z{ 0.65 + 0.020 } H2 S40 C0.008     ; 
elif sensors.analog[2].lastReading < 50     ; 45 <= temp < 50
    G31 Z{ 0.65 + 0.060 } H2 S45 C0.012     ; 
elif sensors.analog[2].lastReading < 55     ; 50 <= temp < 55
    G31 Z{ 0.65 + 0.120 } H2 S50 C0.016     ; 
elif sensors.analog[2].lastReading < 60     ; 55 <= temp < 60
    G31 Z{ 0.65 + 0.200 } H2 S55 C0.020     ; 
else                                        ; 60 <= temp
    G31 Z{ 0.65 + 0.300 } H2 S60 C0.024     ; 
