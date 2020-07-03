; G831.g
; Configure PINDA for current temperature
;
; The PINDA's inductive probe responds differently at different temps, and the 
; relationship is not linear. Use a different offset and C-value depending on 
; the current temperature range.
;
; These values are derived by measuring the height offsets at various temperatures,
; performing a polynomial regression, and approximating the result in a series of 
; short, linear segments.
;
if sensors.analog[2].lastReading < 25       ;       temp < 25°C
    G31 P500 X23 Y5 Z{ 0.65 + 0.000000 } H2 S20 C0.001685
elif sensors.analog[2].lastReading < 30     ; 25 <= temp < 30
    G31 P500 X23 Y5 Z{ 0.65 + 0.008425 } H2 S25 C0.007815 
elif sensors.analog[2].lastReading < 35     ; 30 <= temp < 35
    G31 P500 X23 Y5 Z{ 0.65 + 0.047500 } H2 S30 C0.013945 
elif sensors.analog[2].lastReading < 40     ; 35 <= temp < 40
    G31 P500 X23 Y5 Z{ 0.65 + 0.117225 } H2 S35 C0.020075 
elif sensors.analog[2].lastReading < 45     ; 40 <= temp < 45
    G31 P500 X23 Y5 Z{ 0.65 + 0.217600 } H2 S40 C0.026205
elif sensors.analog[2].lastReading < 50     ; 45 <= temp < 50
    G31 P500 X23 Y5 Z{ 0.65 + 0.348625 } H2 S45 C0.032335
elif sensors.analog[2].lastReading < 55     ; 50 <= temp < 55
    G31 P500 X23 Y5 Z{ 0.65 + 0.510300 } H2 S50 C0.038465  
elif sensors.analog[2].lastReading < 60     ; 55 <= temp < 60
    G31 P500 X23 Y5 Z{ 0.65 + 0.702625 } H2 S55 C0.044595
elif sensors.analog[2].lastReading < 65     ; 60 <= temp < 65
    G31 P500 X23 Y5 Z{ 0.65 + 0.925600 } H2 S60 C0.050725
else                                        ; 65 <= temp
    G31 P500 X23 Y5 Z{ 0.65 + 1.179225 } H2 S65 C0.056855
