; Configuration file for Duet 3 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.3 on Tue Jun 16 2020 20:13:31 GMT-0500 (Central Daylight Time)

; General preferences
G90                                                   ; send absolute coordinates...
M83                                                   ; ...but relative extruder moves
M550 P"MK3D"                                          ; set printer name

; Drives
M569 P0.0 S0 D3                                       ; X Moons HA6 - 0.0 goes backwards
M569 P0.1 S1 D3                                       ; Y Moons HA6 - 0.1 goes forwards
M569 P0.2 S0 D3                                       ; Z Left  Stock MK3S - 0.2 goes backwards
M569 P0.3 S0 D3                                       ; Z Right Stock MK3S - 0.3 goes backwards
M569 P0.4 S1 D3                                       ; E LDO "Slim Power" - 0.4 goes forwards
M584 X0.0 Y0.1 Z0.2:0.3 E0.4                          ; set drive mapping
M350 X32 Y32 Z64 E32 I1                               ; configure microstepping with interpolation
M92 X400.00 Y400.00 Z1600.00 E1660.00                 ; set steps per mm
M906 X1600 Y1600 Z800 E1000 I30                       ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                               ; Set idle timeout

; Speeds
M203 X24000.00 Y24000.00 Z1440.00 E3600.00             ; set maximum speeds (mm/min)
M201 X2500.00  Y2500.00  Z480.00  E1500.00             ; set accelerations (mm/s^2)
M566 X500.00   Y500.00   Z24.00   E1500.00             ; set maximum jerk (instantaneous speed changes) (mm/min)
M204 P1000 T2500                                       ; use 1000mm/s² acceleration for print moves and 2500mm/s² for travel moves

; From cheeseandham on Railcore Discord, June 20, 2020 (for reference)
; M201 X4000 Y4000 Z100 E1500       ; Accelerations (mm/s^2)
; M203 X24000 Y24000 Z800 E3600     ; Maximum speeds (mm/min)
; M566 X1000 Y1000 Z100 E1500       ; Maximum jerk speeds mm/minute

; Trinamic Drive Tuning
; Tune tpwmthrs (V) so stealthchop runs at appropriate speeds
; and tune thigh (H) to avoid shifting into fullstep mode
M569 P0.0 V30   H5                                    ; X  - Set tpwmthrs so StealthChop runs up to 125mm/sec
M569 P0.1 V30   H5                                    ; Y  - Set tpwmthrs so StealthChop runs up to 125mm/sec
M569 P0.2 V75   H5                                    ; ZL - Set tpwmthrs so StealthChop runs up to 25mm/sec
M569 P0.3 V75   H5                                    ; zR - Set tpwmthrs so StealthChop runs up to 25mm/sec
M569 P0.4 V125  H5                                    ; E  - Set tpwmthrs so StealthChop runs up to 36.1mm/sec

; Axis Limits
M208 X-2  Y-8.0  Z0.15  S1                            ; set axis minima
M208 X250 Y212.5 Z210   S0                            ; set axis maxima

; Endstops
M574 X1 S3                                            ; configure sensorless endstop for low end on X
M574 Y1 S3                                            ; configure sensorless endstop for low end on Y
M574 Z1 S2                                            ; configure Z Probe for low end on Z

; Z-Probe
M308 S2 P"temp1" Y"thermistor" A"PINDA" T100000 B3950 ; set PINDA thermistor as S2
M558 P5 C"^io6.in" H1.0 F360 T99999 A20 S0.003        ; Define PINDA probe 
M557 X32:223 Y35:184 P3
; mega map
; M557 X22:234 Y4:216 P21
; Ends @  :211   :211 (so offsets applied, coordinates requested & in heightmap are where PINDA measured)
G831                                                  ; set Z probe trigger height with PINDA temp compensation

; Leadscrew locations
M671 X-41.5:289.5 Y105:105 S7.5                       ; Define leadscrew locations (with fake Y coordinates)

; Heaters
M308 S0 P"temp0" Y"thermistor" A"Bed" T100000 B4092   ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out0" T0                                    ; create bed heater output on out0 and map it to sensor 0
M307 H0 B1 S1.00 A155.3 C497.5 D9.2 V24.0             ; enable bang bang mode for the bed heater and tune, PWM causes noise with Z steppers
M140 H0                                               ; map heated bed to heater 0
M143 H0 S125                                          ; set temperature limit for heater 0 to 125C
M308 S1 P"0.spi.cs0" Y"rtd-max31865" A"Hotend" F60    ; configure sensor 1 as PT100 on RTD1 rejecting local 60Hz mains frequency
M950 H1 C"out1" T1                                    ; create nozzle heater output on out1 and map it to sensor 1
; M307 H1 B0 S1.00 A830.5 C217.5 D3.5 V24.4           ; enable PID mode for heater and tune (no print fan)
M307 H1 B0 S1.00 A314.3 C87.8 D2.3 V24.4              ; enable PID mode for heater and tune  (100% print fan)

; Fans
M950 F0 C"out7" Q500                                  ; create fan 0 on pin out9 and set its frequency
M106 P0 C"Part" S0 H-1                                ; set fan 0 name and value. Thermostatic control is turned off
M950 F1 C"!out4+out4.tach" Q25000                     ; create fan 1 on pin out4 and set its frequency
M106 P1 C"Hotend" S1.0 H1 T35                         ; set fan 1 name and value. Thermostatic control is turned on

; Tools
M563 P0 S"Mosquito" D0 H1 F0                          ; define tool 0
G10 P0 X0 Y0 Z0                                       ; set tool 0 axis offsets
G10 P0 R0 S0                                          ; set initial tool 0 active and standby temperatures to 0C
T0                                                    ; Select the one and only tool

; Dynamic Acceleration
; https://duet3d.dozuki.com/Wiki/Gcode#Section_M593_Configure_Dynamic_Acceleration_Adjustment
; Divide speed in mm/sec by distance between ringing artifacts in mm
M593 F{ 60 / 1.8 }                                    ; cancel ringing at 33.3333Hz

; Babystepping
M290 R0 S0.05                                         ; Set babystepping at an absolute value

; Miscellaneous
M308 S10 P"mcu-temp" Y"mcu-temp" A"MCU"               ; Set MCU temp on Sensor 10
; M501                                                  ; load saved parameters from non-volatile memory
