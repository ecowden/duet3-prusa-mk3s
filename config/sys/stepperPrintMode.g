; stepperPrintMode.g
; Puts steppers into "print mode",
; with high current, high stall thresholds, etc.

M400                        ; make sure everything has stopped before changing stepper settings

; Stall Detection & Sensorless Homing
; Adjust S to set threshold, higher is less sensitive:
; https://duet3d.dozuki.com/Wiki/Gcode#Section_M915_Configure_motor_stall_detection
;
; TODO change mode to S2 or S3 once we've got the threshold dialed in to 
; act on stalls.
M915 X S10  F1 H400 R1      ; X Axis stall detection
M915 Y S10  F1 H400 R1      ; Y Axis stall detection
M915 Z S25  F1 H200 R1      ; Z Axis stall detection

; Stepper currents
M913 X100                   ; X motor currents back to normal
M913 Y100                   ; Y motor currents back to normal
G4 P50                      ; hold for 50ms

; Engage StealthChop
M569 P0.0 D3                ; Set X to StealthChop
M569 P0.1 D3                ; Set Y to StealthChop

; Tune motors for StealthChop with short moves at moderate speeds
G4 P100                     ; hold for 100ms
G1 X{ move.axes[0].max/2 - sensors.probes[0].offsets[0] - 64 } Y{ move.axes[1].max/2 - sensors.probes[0].offsets[1] - 64 } F6788
G1 X{ move.axes[0].max/2 - sensors.probes[0].offsets[0] }      Y{ move.axes[1].max/2 - sensors.probes[0].offsets[1] }      F6788
