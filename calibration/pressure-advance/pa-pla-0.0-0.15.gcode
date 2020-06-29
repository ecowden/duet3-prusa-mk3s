; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Mk3D3
; Filament: PLA
; Created: Sun Jun 28 2020 18:37:48 GMT-0500 (Central Daylight Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 215 °C
; Bed Temperature = 60 °C
; Retraction Distance = 0.6 mm
; Layer Height = 0.15 mm
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 250 mm
; Bed Size Y = 210 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/m
; Fast Printing Speed = 4800 mm/m
; Movement Speed = 15000 mm/m
; Retract Speed = 1800 mm/m
; Printing Acceleration = 800 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 1.5
; Factor Stepping = 0.05
; Test Line Spacing = 5 mm
; Test Line Length Slow = 30 mm
; Test Line Length Fast = 60 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 138 mm
; Print Size Y = 175 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ

M104 S215 ; Set nozzle temperature (no wait)
M190 S60 ; Set bed temperature (wait)
M109 S215 ; Wait for nozzle temp

M98 P"/sys/print/prepare.g" ; prepare machine

M204 P800 ; Acceleration
M83 ; Relative E
G81         ; Go home ASAP
G1 Z5 F1000 ; Z raise

G92 E0 ; Reset extruder distance
G1 X125 Y105 F15000 ; move to start
G1 Z0.15 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X56 Y17.5 F15000 ; move to start
G1 X56 Y192.5 E13.0962 F1800 ; print line
G1 X56.72 Y192.5 F15000 ; move to start
G1 X56.72 Y17.5 E13.0962 F1800 ; print line
G1 E-0.6 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X66 Y17.5 F15000 ; move to start
M572 D0 S0 ; set K-factor
M117 K0 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y17.5 E0.898 F1200 ; print line
G1 X156 Y17.5 E1.796 F4800 ; print line
G1 X186 Y17.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y22.5 F15000 ; move to start
M572 D0 S0.005 ; set K-factor
M117 K0.005 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y22.5 E0.898 F1200 ; print line
G1 X156 Y22.5 E1.796 F4800 ; print line
G1 X186 Y22.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y27.5 F15000 ; move to start
M572 D0 S0.01 ; set K-factor
M117 K0.01 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y27.5 E0.898 F1200 ; print line
G1 X156 Y27.5 E1.796 F4800 ; print line
G1 X186 Y27.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y32.5 F15000 ; move to start
M572 D0 S0.015 ; set K-factor
M117 K0.015 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y32.5 E0.898 F1200 ; print line
G1 X156 Y32.5 E1.796 F4800 ; print line
G1 X186 Y32.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y37.5 F15000 ; move to start
M572 D0 S0.02 ; set K-factor
M117 K0.02 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y37.5 E0.898 F1200 ; print line
G1 X156 Y37.5 E1.796 F4800 ; print line
G1 X186 Y37.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y42.5 F15000 ; move to start
M572 D0 S0.025 ; set K-factor
M117 K0.025 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y42.5 E0.898 F1200 ; print line
G1 X156 Y42.5 E1.796 F4800 ; print line
G1 X186 Y42.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y47.5 F15000 ; move to start
M572 D0 S0.03 ; set K-factor
M117 K0.03 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y47.5 E0.898 F1200 ; print line
G1 X156 Y47.5 E1.796 F4800 ; print line
G1 X186 Y47.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y52.5 F15000 ; move to start
M572 D0 S0.035 ; set K-factor
M117 K0.035 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y52.5 E0.898 F1200 ; print line
G1 X156 Y52.5 E1.796 F4800 ; print line
G1 X186 Y52.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y57.5 F15000 ; move to start
M572 D0 S0.04 ; set K-factor
M117 K0.04 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y57.5 E0.898 F1200 ; print line
G1 X156 Y57.5 E1.796 F4800 ; print line
G1 X186 Y57.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y62.5 F15000 ; move to start
M572 D0 S0.045 ; set K-factor
M117 K0.045 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y62.5 E0.898 F1200 ; print line
G1 X156 Y62.5 E1.796 F4800 ; print line
G1 X186 Y62.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y67.5 F15000 ; move to start
M572 D0 S0.05 ; set K-factor
M117 K0.05 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y67.5 E0.898 F1200 ; print line
G1 X156 Y67.5 E1.796 F4800 ; print line
G1 X186 Y67.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y72.5 F15000 ; move to start
M572 D0 S0.055 ; set K-factor
M117 K0.055 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y72.5 E0.898 F1200 ; print line
G1 X156 Y72.5 E1.796 F4800 ; print line
G1 X186 Y72.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y77.5 F15000 ; move to start
M572 D0 S0.06 ; set K-factor
M117 K0.06 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y77.5 E0.898 F1200 ; print line
G1 X156 Y77.5 E1.796 F4800 ; print line
G1 X186 Y77.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y82.5 F15000 ; move to start
M572 D0 S0.065 ; set K-factor
M117 K0.065 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y82.5 E0.898 F1200 ; print line
G1 X156 Y82.5 E1.796 F4800 ; print line
G1 X186 Y82.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y87.5 F15000 ; move to start
M572 D0 S0.07 ; set K-factor
M117 K0.07 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y87.5 E0.898 F1200 ; print line
G1 X156 Y87.5 E1.796 F4800 ; print line
G1 X186 Y87.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y92.5 F15000 ; move to start
M572 D0 S0.075 ; set K-factor
M117 K0.075 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y92.5 E0.898 F1200 ; print line
G1 X156 Y92.5 E1.796 F4800 ; print line
G1 X186 Y92.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y97.5 F15000 ; move to start
M572 D0 S0.08 ; set K-factor
M117 K0.08 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y97.5 E0.898 F1200 ; print line
G1 X156 Y97.5 E1.796 F4800 ; print line
G1 X186 Y97.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y102.5 F15000 ; move to start
M572 D0 S0.085 ; set K-factor
M117 K0.085 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y102.5 E0.898 F1200 ; print line
G1 X156 Y102.5 E1.796 F4800 ; print line
G1 X186 Y102.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y107.5 F15000 ; move to start
M572 D0 S0.09 ; set K-factor
M117 K0.09 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y107.5 E0.898 F1200 ; print line
G1 X156 Y107.5 E1.796 F4800 ; print line
G1 X186 Y107.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y112.5 F15000 ; move to start
M572 D0 S0.095 ; set K-factor
M117 K0.095 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y112.5 E0.898 F1200 ; print line
G1 X156 Y112.5 E1.796 F4800 ; print line
G1 X186 Y112.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y117.5 F15000 ; move to start
M572 D0 S0.1 ; set K-factor
M117 K0.1 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y117.5 E0.898 F1200 ; print line
G1 X156 Y117.5 E1.796 F4800 ; print line
G1 X186 Y117.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y122.5 F15000 ; move to start
M572 D0 S0.105 ; set K-factor
M117 K0.105 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y122.5 E0.898 F1200 ; print line
G1 X156 Y122.5 E1.796 F4800 ; print line
G1 X186 Y122.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y127.5 F15000 ; move to start
M572 D0 S0.11 ; set K-factor
M117 K0.11 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y127.5 E0.898 F1200 ; print line
G1 X156 Y127.5 E1.796 F4800 ; print line
G1 X186 Y127.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y132.5 F15000 ; move to start
M572 D0 S0.115 ; set K-factor
M117 K0.115 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y132.5 E0.898 F1200 ; print line
G1 X156 Y132.5 E1.796 F4800 ; print line
G1 X186 Y132.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y137.5 F15000 ; move to start
M572 D0 S0.12 ; set K-factor
M117 K0.12 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y137.5 E0.898 F1200 ; print line
G1 X156 Y137.5 E1.796 F4800 ; print line
G1 X186 Y137.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y142.5 F15000 ; move to start
M572 D0 S0.125 ; set K-factor
M117 K0.125 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y142.5 E0.898 F1200 ; print line
G1 X156 Y142.5 E1.796 F4800 ; print line
G1 X186 Y142.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y147.5 F15000 ; move to start
M572 D0 S0.13 ; set K-factor
M117 K0.13 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y147.5 E0.898 F1200 ; print line
G1 X156 Y147.5 E1.796 F4800 ; print line
G1 X186 Y147.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y152.5 F15000 ; move to start
M572 D0 S0.135 ; set K-factor
M117 K0.135 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y152.5 E0.898 F1200 ; print line
G1 X156 Y152.5 E1.796 F4800 ; print line
G1 X186 Y152.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y157.5 F15000 ; move to start
M572 D0 S0.14 ; set K-factor
M117 K0.14 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y157.5 E0.898 F1200 ; print line
G1 X156 Y157.5 E1.796 F4800 ; print line
G1 X186 Y157.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y162.5 F15000 ; move to start
M572 D0 S0.145 ; set K-factor
M117 K0.145 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y162.5 E0.898 F1200 ; print line
G1 X156 Y162.5 E1.796 F4800 ; print line
G1 X186 Y162.5 E0.898 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y167.5 F15000 ; move to start
;
; Mark the test area for reference
M117 K0
M572 D0 S0 ; Set K-factor 0
G1 X96 Y172.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X96 Y192.5 E0.5987 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X156 Y172.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X156 Y192.5 E0.5987 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
;
; print K-values
;
G1 X188 Y15.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y15.5 E0.0599 F1200 ; 0
G1 X190 Y17.5 E0.0599 F1200 ; 0
G1 X190 Y19.5 E0.0599 F1200 ; 0
G1 X188 Y19.5 E0.0599 F1200 ; 0
G1 X188 Y17.5 E0.0599 F1200 ; 0
G1 X188 Y15.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y25.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y25.5 E0.0599 F1200 ; 0
G1 X190 Y27.5 E0.0599 F1200 ; 0
G1 X190 Y29.5 E0.0599 F1200 ; 0
G1 X188 Y29.5 E0.0599 F1200 ; 0
G1 X188 Y27.5 E0.0599 F1200 ; 0
G1 X188 Y25.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y25.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y25.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y25.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y25.5 E0.0599 F1200 ; 0
G1 X194 Y27.5 E0.0599 F1200 ; 0
G1 X194 Y29.5 E0.0599 F1200 ; 0
G1 X192 Y29.5 E0.0599 F1200 ; 0
G1 X192 Y27.5 E0.0599 F1200 ; 0
G1 X192 Y25.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y25.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X195 Y27.5 E0.0599 F1200 ; 1
G1 X195 Y29.5 E0.0599 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y35.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y35.5 E0.0599 F1200 ; 0
G1 X190 Y37.5 E0.0599 F1200 ; 0
G1 X190 Y39.5 E0.0599 F1200 ; 0
G1 X188 Y39.5 E0.0599 F1200 ; 0
G1 X188 Y37.5 E0.0599 F1200 ; 0
G1 X188 Y35.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y35.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y35.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y35.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y35.5 E0.0599 F1200 ; 0
G1 X194 Y37.5 E0.0599 F1200 ; 0
G1 X194 Y39.5 E0.0599 F1200 ; 0
G1 X192 Y39.5 E0.0599 F1200 ; 0
G1 X192 Y37.5 E0.0599 F1200 ; 0
G1 X192 Y35.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y35.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X195 Y37.5 F15000 ; move to start
G1 X195 Y39.5 F15000 ; move to start
G1 X197 Y39.5 E0.0599 F1200 ; 2
G1 X197 Y37.5 E0.0599 F1200 ; 2
G1 X195 Y37.5 E0.0599 F1200 ; 2
G1 X195 Y35.5 E0.0599 F1200 ; 2
G1 X197 Y35.5 E0.0599 F1200 ; 2
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y45.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y45.5 E0.0599 F1200 ; 0
G1 X190 Y47.5 E0.0599 F1200 ; 0
G1 X190 Y49.5 E0.0599 F1200 ; 0
G1 X188 Y49.5 E0.0599 F1200 ; 0
G1 X188 Y47.5 E0.0599 F1200 ; 0
G1 X188 Y45.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y45.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y45.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y45.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y45.5 E0.0599 F1200 ; 0
G1 X194 Y47.5 E0.0599 F1200 ; 0
G1 X194 Y49.5 E0.0599 F1200 ; 0
G1 X192 Y49.5 E0.0599 F1200 ; 0
G1 X192 Y47.5 E0.0599 F1200 ; 0
G1 X192 Y45.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y45.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X195 Y47.5 F15000 ; move to start
G1 X195 Y49.5 F15000 ; move to start
G1 X197 Y49.5 E0.0599 F1200 ; 3
G1 X197 Y47.5 E0.0599 F1200 ; 3
G1 X197 Y45.5 E0.0599 F1200 ; 3
G1 X195 Y45.5 E0.0599 F1200 ; 3
G1 X195 Y47.5 F15000 ; move to start
G1 X197 Y47.5 E0.0599 F1200 ; 3
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y55.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y55.5 E0.0599 F1200 ; 0
G1 X190 Y57.5 E0.0599 F1200 ; 0
G1 X190 Y59.5 E0.0599 F1200 ; 0
G1 X188 Y59.5 E0.0599 F1200 ; 0
G1 X188 Y57.5 E0.0599 F1200 ; 0
G1 X188 Y55.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y55.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y55.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y55.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y55.5 E0.0599 F1200 ; 0
G1 X194 Y57.5 E0.0599 F1200 ; 0
G1 X194 Y59.5 E0.0599 F1200 ; 0
G1 X192 Y59.5 E0.0599 F1200 ; 0
G1 X192 Y57.5 E0.0599 F1200 ; 0
G1 X192 Y55.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y55.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X195 Y57.5 F15000 ; move to start
G1 X195 Y59.5 F15000 ; move to start
G1 X195 Y57.5 E0.0599 F1200 ; 4
G1 X197 Y57.5 E0.0599 F1200 ; 4
G1 X197 Y59.5 F15000 ; move to start
G1 X197 Y57.5 E0.0599 F1200 ; 4
G1 X197 Y55.5 E0.0599 F1200 ; 4
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y65.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y65.5 E0.0599 F1200 ; 0
G1 X190 Y67.5 E0.0599 F1200 ; 0
G1 X190 Y69.5 E0.0599 F1200 ; 0
G1 X188 Y69.5 E0.0599 F1200 ; 0
G1 X188 Y67.5 E0.0599 F1200 ; 0
G1 X188 Y65.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y65.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y65.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y65.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y65.5 E0.0599 F1200 ; 0
G1 X194 Y67.5 E0.0599 F1200 ; 0
G1 X194 Y69.5 E0.0599 F1200 ; 0
G1 X192 Y69.5 E0.0599 F1200 ; 0
G1 X192 Y67.5 E0.0599 F1200 ; 0
G1 X192 Y65.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y65.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X197 Y65.5 E0.0599 F1200 ; 5
G1 X197 Y67.5 E0.0599 F1200 ; 5
G1 X195 Y67.5 E0.0599 F1200 ; 5
G1 X195 Y69.5 E0.0599 F1200 ; 5
G1 X197 Y69.5 E0.0599 F1200 ; 5
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y75.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y75.5 E0.0599 F1200 ; 0
G1 X190 Y77.5 E0.0599 F1200 ; 0
G1 X190 Y79.5 E0.0599 F1200 ; 0
G1 X188 Y79.5 E0.0599 F1200 ; 0
G1 X188 Y77.5 E0.0599 F1200 ; 0
G1 X188 Y75.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y75.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y75.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y75.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y75.5 E0.0599 F1200 ; 0
G1 X194 Y77.5 E0.0599 F1200 ; 0
G1 X194 Y79.5 E0.0599 F1200 ; 0
G1 X192 Y79.5 E0.0599 F1200 ; 0
G1 X192 Y77.5 E0.0599 F1200 ; 0
G1 X192 Y75.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y75.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X195 Y77.5 F15000 ; move to start
G1 X197 Y77.5 E0.0599 F1200 ; 6
G1 X197 Y75.5 E0.0599 F1200 ; 6
G1 X195 Y75.5 E0.0599 F1200 ; 6
G1 X195 Y77.5 E0.0599 F1200 ; 6
G1 X195 Y79.5 E0.0599 F1200 ; 6
G1 X197 Y79.5 E0.0599 F1200 ; 6
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y85.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y85.5 E0.0599 F1200 ; 0
G1 X190 Y87.5 E0.0599 F1200 ; 0
G1 X190 Y89.5 E0.0599 F1200 ; 0
G1 X188 Y89.5 E0.0599 F1200 ; 0
G1 X188 Y87.5 E0.0599 F1200 ; 0
G1 X188 Y85.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y85.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y85.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y85.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y85.5 E0.0599 F1200 ; 0
G1 X194 Y87.5 E0.0599 F1200 ; 0
G1 X194 Y89.5 E0.0599 F1200 ; 0
G1 X192 Y89.5 E0.0599 F1200 ; 0
G1 X192 Y87.5 E0.0599 F1200 ; 0
G1 X192 Y85.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y85.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X195 Y87.5 F15000 ; move to start
G1 X195 Y89.5 F15000 ; move to start
G1 X197 Y89.5 E0.0599 F1200 ; 7
G1 X197 Y87.5 E0.0599 F1200 ; 7
G1 X197 Y85.5 E0.0599 F1200 ; 7
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y95.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y95.5 E0.0599 F1200 ; 0
G1 X190 Y97.5 E0.0599 F1200 ; 0
G1 X190 Y99.5 E0.0599 F1200 ; 0
G1 X188 Y99.5 E0.0599 F1200 ; 0
G1 X188 Y97.5 E0.0599 F1200 ; 0
G1 X188 Y95.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y95.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y95.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y95.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y95.5 E0.0599 F1200 ; 0
G1 X194 Y97.5 E0.0599 F1200 ; 0
G1 X194 Y99.5 E0.0599 F1200 ; 0
G1 X192 Y99.5 E0.0599 F1200 ; 0
G1 X192 Y97.5 E0.0599 F1200 ; 0
G1 X192 Y95.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y95.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X195 Y97.5 F15000 ; move to start
G1 X197 Y97.5 E0.0599 F1200 ; 8
G1 X197 Y95.5 E0.0599 F1200 ; 8
G1 X195 Y95.5 E0.0599 F1200 ; 8
G1 X195 Y97.5 E0.0599 F1200 ; 8
G1 X195 Y99.5 E0.0599 F1200 ; 8
G1 X197 Y99.5 E0.0599 F1200 ; 8
G1 X197 Y97.5 E0.0599 F1200 ; 8
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y105.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y105.5 E0.0599 F1200 ; 0
G1 X190 Y107.5 E0.0599 F1200 ; 0
G1 X190 Y109.5 E0.0599 F1200 ; 0
G1 X188 Y109.5 E0.0599 F1200 ; 0
G1 X188 Y107.5 E0.0599 F1200 ; 0
G1 X188 Y105.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y105.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y105.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y105.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X194 Y105.5 E0.0599 F1200 ; 0
G1 X194 Y107.5 E0.0599 F1200 ; 0
G1 X194 Y109.5 E0.0599 F1200 ; 0
G1 X192 Y109.5 E0.0599 F1200 ; 0
G1 X192 Y107.5 E0.0599 F1200 ; 0
G1 X192 Y105.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X195 Y105.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X197 Y105.5 E0.0599 F1200 ; 9
G1 X197 Y107.5 E0.0599 F1200 ; 9
G1 X195 Y107.5 E0.0599 F1200 ; 9
G1 X195 Y109.5 E0.0599 F1200 ; 9
G1 X197 Y109.5 E0.0599 F1200 ; 9
G1 X197 Y107.5 E0.0599 F1200 ; 9
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y115.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y115.5 E0.0599 F1200 ; 0
G1 X190 Y117.5 E0.0599 F1200 ; 0
G1 X190 Y119.5 E0.0599 F1200 ; 0
G1 X188 Y119.5 E0.0599 F1200 ; 0
G1 X188 Y117.5 E0.0599 F1200 ; 0
G1 X188 Y115.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y115.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y115.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y115.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X192 Y117.5 E0.0599 F1200 ; 1
G1 X192 Y119.5 E0.0599 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y125.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y125.5 E0.0599 F1200 ; 0
G1 X190 Y127.5 E0.0599 F1200 ; 0
G1 X190 Y129.5 E0.0599 F1200 ; 0
G1 X188 Y129.5 E0.0599 F1200 ; 0
G1 X188 Y127.5 E0.0599 F1200 ; 0
G1 X188 Y125.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y125.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y125.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y125.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X192 Y127.5 E0.0599 F1200 ; 1
G1 X192 Y129.5 E0.0599 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 X193 Y125.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X193 Y127.5 E0.0599 F1200 ; 1
G1 X193 Y129.5 E0.0599 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y135.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y135.5 E0.0599 F1200 ; 0
G1 X190 Y137.5 E0.0599 F1200 ; 0
G1 X190 Y139.5 E0.0599 F1200 ; 0
G1 X188 Y139.5 E0.0599 F1200 ; 0
G1 X188 Y137.5 E0.0599 F1200 ; 0
G1 X188 Y135.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y135.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y135.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y135.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X192 Y137.5 E0.0599 F1200 ; 1
G1 X192 Y139.5 E0.0599 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 X193 Y135.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X193 Y137.5 F15000 ; move to start
G1 X193 Y139.5 F15000 ; move to start
G1 X195 Y139.5 E0.0599 F1200 ; 2
G1 X195 Y137.5 E0.0599 F1200 ; 2
G1 X193 Y137.5 E0.0599 F1200 ; 2
G1 X193 Y135.5 E0.0599 F1200 ; 2
G1 X195 Y135.5 E0.0599 F1200 ; 2
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y145.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y145.5 E0.0599 F1200 ; 0
G1 X190 Y147.5 E0.0599 F1200 ; 0
G1 X190 Y149.5 E0.0599 F1200 ; 0
G1 X188 Y149.5 E0.0599 F1200 ; 0
G1 X188 Y147.5 E0.0599 F1200 ; 0
G1 X188 Y145.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y145.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y145.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y145.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X192 Y147.5 E0.0599 F1200 ; 1
G1 X192 Y149.5 E0.0599 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 X193 Y145.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X193 Y147.5 F15000 ; move to start
G1 X193 Y149.5 F15000 ; move to start
G1 X195 Y149.5 E0.0599 F1200 ; 3
G1 X195 Y147.5 E0.0599 F1200 ; 3
G1 X195 Y145.5 E0.0599 F1200 ; 3
G1 X193 Y145.5 E0.0599 F1200 ; 3
G1 X193 Y147.5 F15000 ; move to start
G1 X195 Y147.5 E0.0599 F1200 ; 3
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
G1 X188 Y155.5 F15000 ; move to start
G1 Z0.15 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X190 Y155.5 E0.0599 F1200 ; 0
G1 X190 Y157.5 E0.0599 F1200 ; 0
G1 X190 Y159.5 E0.0599 F1200 ; 0
G1 X188 Y159.5 E0.0599 F1200 ; 0
G1 X188 Y157.5 E0.0599 F1200 ; 0
G1 X188 Y155.5 E0.0599 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X191 Y155.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X191 Y155.9 E0.012 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X192 Y155.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X192 Y157.5 E0.0599 F1200 ; 1
G1 X192 Y159.5 E0.0599 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 X193 Y155.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X193 Y157.5 F15000 ; move to start
G1 X193 Y159.5 F15000 ; move to start
G1 X193 Y157.5 E0.0599 F1200 ; 4
G1 X195 Y157.5 E0.0599 F1200 ; 4
G1 X195 Y159.5 F15000 ; move to start
G1 X195 Y157.5 E0.0599 F1200 ; 4
G1 X195 Y155.5 E0.0599 F1200 ; 4
G1 E-0.6 F1800 ; retract
G1 Z0.25 F1200 ; zHop
;
; FINISH
;
M400 ; finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X250 Y210 F15000 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;