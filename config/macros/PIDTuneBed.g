; PIDTuneBed.g
; Tune heating parameters for heated bed
;
; After running, use M303 to get last settings
;
M303 H0 S60     ; PID Tune bed at 60°C

; Round 1, was adjusting voltage
; Heater 0 model: gain 136.6, time constant 448.4, dead time 9.9, max PWM 1.00, calibration voltage 23.7, mode PID
; Computed PID parameters for setpoint change: P59.4, I0.894, D410.2
; Computed PID parameters for load change: P59.4, I2.036, D410.2

; Round 2, may not have reached room temp from previous round
; Heater 0 model: gain 150.0, time constant 477.8, dead time 9.3, max PWM 1.00, calibration voltage 24.0, mode PID
; Computed PID parameters for setpoint change: P61.4, I0.923, D397.9
; Computed PID parameters for load change: P61.4, I2.169, D397.9