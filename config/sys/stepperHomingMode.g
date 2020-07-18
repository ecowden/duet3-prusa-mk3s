; stepperHomingMode.g
; Puts steppers into "homing mode",
; with low current, low stall thresholds, etc.

; Reduce stepper currents
M400                        ; make sure everything is stopped
M569 P0.0 D2                ; Set X to SpreadCycle
M569 P0.1 D2                ; Set Y to SpreadCycle
M913 X50                    ; reduce X motor current to 50% to prevent belts slipping
M913 Y50                    ; reduce Y motor current to 50% to prevent belts slipping

; Stall Detection & Sensorless Homing
; Adjust S to set threshold, higher is less sensitive:
; https://duet3d.dozuki.com/Wiki/Gcode#Section_M915_Configure_motor_stall_detection
;
M915 X S-1  F0 H400 R1      ; X Axis stall detection
M915 Y S-1  F0 H400 R1      ; Y Axis stall detection
M915 Z S20  F1 H200 R2      ; Z Axis stall detection
