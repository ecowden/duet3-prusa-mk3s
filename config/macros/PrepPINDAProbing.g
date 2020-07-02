; PrepPINDAProbing.g
; Set up the machine to do PINDA calibration probing

M558 P5 C"^io6.in" H1.0 F180 T15000 A20 S0.001              ; Set probing to slow and precise
G31 P500 X23 Y5 Z0.65 H2 S25 C0.000                         ; ensure probing is using cool calibration and no offset

M307 H1 B0 S1.00 A830.5 C217.5 D3.5 V24.4                   ; Set PID tune for no fan

G1 X100 Y102 Z3 F15000                                      ; Move to put PINDA in center of bed
echo "Homing Z at " ^ sensors.analog[2].lastReading ^ "°C"  ; Print homing temp
G30                                                         ; Home Z
