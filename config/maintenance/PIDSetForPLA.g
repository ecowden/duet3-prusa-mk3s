; PIDSetForPLA.g
; Set Hotend PID configuration for PLA
; Temp:         215°C
; Part Fan:     100%
;
; Autotune Results:
; Heater 1 model: gain 314.3, time constant 87.8, dead time 2.3, max PWM 1.00, calibration voltage 24.4, mode PID
; Computed PID parameters for setpoint change: P21.4, I1.498, D34.9
; Computed PID parameters for load change: P21.4, I3.256, D34.9
;
M307 H1 B0 S1.00 A314.3 C87.8 D2.3 V24.4             ; enable PID mode for heater and tune
