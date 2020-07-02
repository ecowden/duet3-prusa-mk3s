; ProbePoint.g
; Probe the current location and report the Z height
;
echo "Starting at " ^ sensors.analog[2].lastReading ^ "°C"
G1 Z3                        ; move to first probing height
G30 P0 X100 Y102 Z-99999 S-1 ; probe #1
G1 Z3                        ; lift off bed
G30 P0 X100 Y102 Z-99999 S-1 ; probe #2
G1 Z3                        ; lift off bed
G30 P0 X100 Y102 Z-99999 S-1 ; probe #3
G1 Z3                        ; lift off bed
G30 P0 X100 Y102 Z-99999 S-1 ; probe #4
G1 Z3                        ; lift off bed
G30 P0 X100 Y102 Z-99999 S-1 ; probe #5
G1 Z3                        ; lift off bed
echo "Ended at " ^ sensors.analog[2].lastReading ^ "°C"