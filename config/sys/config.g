; Configuration file for Duet 3 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.3 on Tue Jun 16 2020 20:13:31 GMT-0500 (Central Daylight Time)

; General preferences
G90                                                   ; send absolute coordinates...
M83                                                   ; ...but relative extruder moves
M550 P"Duet3"                                         ; set printer name

; Drives
M569 P0.0 S0 D3                                       ; X Moons HA6 - 0.0 goes backwards
M569 P0.1 S1 D3                                       ; Y Moons HA6 - 0.1 goes forwards
M569 P0.2 S0 D3                                       ; Z Left  Stock MK3S - 0.2 goes backwards
M569 P0.3 S0 D3                                       ; Z Right Stock MK3S - 0.3 goes backwards
M569 P0.4 S0 D3                                       ; E LDO "Slim Power" - 0.4 goes backwards
M584 X0.0 Y0.1 Z0.2:0.3 E0.4                          ; set drive mapping
M350 X32 Y32 Z64 E32 I1                               ; configure microstepping with interpolation
M92 X400.00 Y400.00 Z1600.00 E1660.00                  ; set steps per mm
M566 X900.00 Y900.00 Z12.00 E240.00                   ; set maximum instantaneous speed changes (mm/min)
M203 X15000.00 Y15000.00 Z720.00 E7200.00             ; Aggressive - set maximum speeds (mm/min)
M201 X2500.00 Y2500.00 Z200.00 E5000.00               ; set accelerations (mm/s^2)
M906 X800 Y1600 Z600 E1000 I50                        ; DEBUG Low set motor currents (mA) and motor idle factor in per cent
M84 S30                                               ; Set idle timeout

; From cheeseandham on Railcore Discord, June 20, 2020 (for reference)
; M201 X4000 Y4000 Z100 E1500       ; Accelerations (mm/s^2)
; M203 X24000 Y24000 Z800 E3600     ; Maximum speeds (mm/min)
; M566 X1000 Y1000 Z100 E1500       ; Maximum jerk speeds mm/minute

; Axis Limits
M208 X0 Y-4 Z0.15 S1                                  ; set axis minima
M208 X255 Y212.5 Z210 S0                              ; set axis maxima

; Endstops
M574 X1 S3                                            ; configure sensorless endstop for low end on X
M574 Y1 S3                                            ; configure sensorless endstop for low end on Y
M574 Z1 S2                                            ; configure Z Probe for low end on Z

; Z-Probe
M558 P5 C"^io6.in" H1.7 F1000 T15000 A20 S0.005       ; Define PINDA probe
M308 S2 P"temp1" Y"thermistor" A"PINDA" T100000 B3950 ; set PINDA thermistor as S2
G31 P500 X23 Y5 Z1                                    ; set Z probe trigger value, offset and trigger height
M557 X24:228 Y6:210 S29.1428571429                    ; define mesh grid
; M557 X1:205 Y:210 S29.1428571429                    ; define mesh grid

; Stall Detection & Sensorless Homing
; TODO tuning still needed
; Adjust S to set threshold, higher is less sensitive
M915 X S0  F0 H400 R0                                 ; X Axis stall detection
M915 Y S0  F0 H400 R0                                 ; Y Axis stall detection
; M915 Z S10 F1 H200 R2                                 ; Z Axis stall detection

;Leadscrew locations
M671 X-38.5:291.5 Y105:105 S7.5                       ; Define leadscrew locations (with fake Y coordinates)

; Heaters
M308 S0 P"temp0" Y"thermistor" A"Bed" T100000 B4092   ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out0" T0                                    ; create bed heater output on out0 and map it to sensor 0
M307 H0 B0 S1.00 A155.3 C497.5 D9.2 V24.0             ; enable PID mode for the bed heater and tune
M140 H0                                               ; map heated bed to heater 0
M143 H0 S125                                          ; set temperature limit for heater 0 to 125C
M308 S1 P"0.spi.cs0" Y"rtd-max31865" A"Hotend"        ; configure sensor 1 as PT100 on RTD1
M950 H1 C"out1" T1                                    ; create nozzle heater output on out1 and map it to sensor 1
M307 H1 B0 S1.00                                      ; disable bang-bang mode for heater  and set PWM limit

M308 S10 P"mcu-temp" Y"mcu-temp" A"MCU"                           ; Set MCU on Sensor 10

; Fans
M950 F0 C"out7" Q500                                  ; create fan 0 on pin out9 and set its frequency
M106 P0 C"Part" S0 H-1                                ; set fan 0 name and value. Thermostatic control is turned off
M950 F1 C"!out4+out4.tach" Q25000                     ; create fan 1 on pin out4 and set its frequency
M106 P1 C"Hotend" S0.8 H1 T35                         ; set fan 1 name and value. Thermostatic control is turned on

; Tools
M563 P0 S"Mosquito" D0 H1 F0                          ; define tool 0
G10 P0 X0 Y0 Z0                                       ; set tool 0 axis offsets
G10 P0 R0 S0                                          ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
M501                                                  ; load saved parameters from non-volatile memory

