; PIDTuneBed.g
; Tune heating parameters for heated bed
;
; After running, use M303 to get last settings
;
M303 H0 S60     ; PID Tune bed at 60°C

; Last result:
; Heater 0 model: gain 155.3, time constant 497.5, dead time 9.2, max PWM 1.00, calibration voltage 24.0, mode PID
; Computed PID parameters for setpoint change: P62.2, I0.920, D400.2
; Computed PID parameters for load change: P62.2, I2.189, D400.2