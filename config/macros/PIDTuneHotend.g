; PIDTuneBed.g
; Tune heating parameters for hotend
;
; After running, use M303 to get last settings,
; or run M500 to save in config-override.g.
;
M106 P1 S1.0 H1 T15       ; Turn on hotend fan, since cooling affects heating parameters
M106 P0 S1.0              ; Turn on print fan, since cooling affects heating parameters
M303 H1 S215              ; PID Tune hotend at 215°C

; Last result with NO part cooling fan:
; Heater 1 model: gain 830.5, time constant 217.5, dead time 3.5, max PWM 1.00, calibration voltage 24.4, mode PID
; Computed PID parameters for setpoint change: P13.3, I0.481, D32.7
; Computed PID parameters for load change: P13.3, I1.182, D32.7

; Last result with 100% part cooling fan:
; Heater 1 model: gain 314.3, time constant 87.8, dead time 2.3, max PWM 1.00, calibration voltage 24.4, mode PID
; Computed PID parameters for setpoint change: P21.4, I1.498, D34.9
; Computed PID parameters for load change: P21.4, I3.256, D34.9