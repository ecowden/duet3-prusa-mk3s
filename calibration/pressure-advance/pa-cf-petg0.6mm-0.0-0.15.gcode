; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: MK3D3
; Filament: CF PETG
; Created: Tue Jun 30 2020 20:40:24 GMT-0500 (Central Daylight Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.6 mm
; Nozzle Temperature = 255 °C
; Bed Temperature = 85 °C
; Retraction Distance = 0.6 mm
; Layer Height = 0.2 mm
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
; Fast Printing Speed = 4200 mm/m
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
; Ending Value Factor = 0.15
; Factor Stepping = 0.005
; Test Line Spacing = 5 mm
; Test Line Length Slow = 30 mm
; Test Line Length Fast = 50 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 118 mm
; Print Size Y = 175 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = false
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ

M104 S255 ; Set nozzle temperature (no wait)
M190 S85 ; Set bed temperature (wait)
M109 S255 ; Wait for nozzle temp

M98 P"/sys/print/prepare.g" ; prepare machine

M204 P800 ; Acceleration
M83 ; Relative E
G81         ; Go home ASAP
G1 Z5 F100 ; Z raise

G92 E0 ; Reset extruder distance
G1 X125 Y105 F15000 ; move to start
G1 Z0.2 F1200 ; Move to layer height
;
; print anchor frame
;
G1 X66 Y14.5 F15000 ; move to start
G1 X66 Y170.5 E10.2734 F1200 ; print line
G1 X66.72 Y170.5 F15000 ; move to start
G1 X66.72 Y14.5 E10.2734 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X176 Y14.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X176 Y170.5 E10.2734 F1200 ; print line
G1 X175.28 Y170.5 F15000 ; move to start
G1 X175.28 Y14.5 E10.2734 F1200 ; print line
G1 E-0.6 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X66 Y17.5 F15000 ; move to start
M572 D0 S0 ; set K-factor
M117 K0 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y17.5 E1.796 F1200 ; print line
G1 X146 Y17.5 E2.9934 F4200 ; print line
G1 X176 Y17.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y22.5 F15000 ; move to start
M572 D0 S0.005 ; set K-factor
M117 K0.005 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y22.5 E1.796 F1200 ; print line
G1 X146 Y22.5 E2.9934 F4200 ; print line
G1 X176 Y22.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y27.5 F15000 ; move to start
M572 D0 S0.01 ; set K-factor
M117 K0.01 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y27.5 E1.796 F1200 ; print line
G1 X146 Y27.5 E2.9934 F4200 ; print line
G1 X176 Y27.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y32.5 F15000 ; move to start
M572 D0 S0.015 ; set K-factor
M117 K0.015 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y32.5 E1.796 F1200 ; print line
G1 X146 Y32.5 E2.9934 F4200 ; print line
G1 X176 Y32.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y37.5 F15000 ; move to start
M572 D0 S0.02 ; set K-factor
M117 K0.02 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y37.5 E1.796 F1200 ; print line
G1 X146 Y37.5 E2.9934 F4200 ; print line
G1 X176 Y37.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y42.5 F15000 ; move to start
M572 D0 S0.025 ; set K-factor
M117 K0.025 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y42.5 E1.796 F1200 ; print line
G1 X146 Y42.5 E2.9934 F4200 ; print line
G1 X176 Y42.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y47.5 F15000 ; move to start
M572 D0 S0.03 ; set K-factor
M117 K0.03 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y47.5 E1.796 F1200 ; print line
G1 X146 Y47.5 E2.9934 F4200 ; print line
G1 X176 Y47.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y52.5 F15000 ; move to start
M572 D0 S0.035 ; set K-factor
M117 K0.035 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y52.5 E1.796 F1200 ; print line
G1 X146 Y52.5 E2.9934 F4200 ; print line
G1 X176 Y52.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y57.5 F15000 ; move to start
M572 D0 S0.04 ; set K-factor
M117 K0.04 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y57.5 E1.796 F1200 ; print line
G1 X146 Y57.5 E2.9934 F4200 ; print line
G1 X176 Y57.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y62.5 F15000 ; move to start
M572 D0 S0.045 ; set K-factor
M117 K0.045 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y62.5 E1.796 F1200 ; print line
G1 X146 Y62.5 E2.9934 F4200 ; print line
G1 X176 Y62.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y67.5 F15000 ; move to start
M572 D0 S0.05 ; set K-factor
M117 K0.05 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y67.5 E1.796 F1200 ; print line
G1 X146 Y67.5 E2.9934 F4200 ; print line
G1 X176 Y67.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y72.5 F15000 ; move to start
M572 D0 S0.055 ; set K-factor
M117 K0.055 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y72.5 E1.796 F1200 ; print line
G1 X146 Y72.5 E2.9934 F4200 ; print line
G1 X176 Y72.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y77.5 F15000 ; move to start
M572 D0 S0.06 ; set K-factor
M117 K0.06 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y77.5 E1.796 F1200 ; print line
G1 X146 Y77.5 E2.9934 F4200 ; print line
G1 X176 Y77.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y82.5 F15000 ; move to start
M572 D0 S0.065 ; set K-factor
M117 K0.065 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y82.5 E1.796 F1200 ; print line
G1 X146 Y82.5 E2.9934 F4200 ; print line
G1 X176 Y82.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y87.5 F15000 ; move to start
M572 D0 S0.07 ; set K-factor
M117 K0.07 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y87.5 E1.796 F1200 ; print line
G1 X146 Y87.5 E2.9934 F4200 ; print line
G1 X176 Y87.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y92.5 F15000 ; move to start
M572 D0 S0.075 ; set K-factor
M117 K0.075 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y92.5 E1.796 F1200 ; print line
G1 X146 Y92.5 E2.9934 F4200 ; print line
G1 X176 Y92.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y97.5 F15000 ; move to start
M572 D0 S0.08 ; set K-factor
M117 K0.08 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y97.5 E1.796 F1200 ; print line
G1 X146 Y97.5 E2.9934 F4200 ; print line
G1 X176 Y97.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y102.5 F15000 ; move to start
M572 D0 S0.085 ; set K-factor
M117 K0.085 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y102.5 E1.796 F1200 ; print line
G1 X146 Y102.5 E2.9934 F4200 ; print line
G1 X176 Y102.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y107.5 F15000 ; move to start
M572 D0 S0.09 ; set K-factor
M117 K0.09 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y107.5 E1.796 F1200 ; print line
G1 X146 Y107.5 E2.9934 F4200 ; print line
G1 X176 Y107.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y112.5 F15000 ; move to start
M572 D0 S0.095 ; set K-factor
M117 K0.095 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y112.5 E1.796 F1200 ; print line
G1 X146 Y112.5 E2.9934 F4200 ; print line
G1 X176 Y112.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y117.5 F15000 ; move to start
M572 D0 S0.1 ; set K-factor
M117 K0.1 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y117.5 E1.796 F1200 ; print line
G1 X146 Y117.5 E2.9934 F4200 ; print line
G1 X176 Y117.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y122.5 F15000 ; move to start
M572 D0 S0.105 ; set K-factor
M117 K0.105 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y122.5 E1.796 F1200 ; print line
G1 X146 Y122.5 E2.9934 F4200 ; print line
G1 X176 Y122.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y127.5 F15000 ; move to start
M572 D0 S0.11 ; set K-factor
M117 K0.11 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y127.5 E1.796 F1200 ; print line
G1 X146 Y127.5 E2.9934 F4200 ; print line
G1 X176 Y127.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y132.5 F15000 ; move to start
M572 D0 S0.115 ; set K-factor
M117 K0.115 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y132.5 E1.796 F1200 ; print line
G1 X146 Y132.5 E2.9934 F4200 ; print line
G1 X176 Y132.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y137.5 F15000 ; move to start
M572 D0 S0.12 ; set K-factor
M117 K0.12 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y137.5 E1.796 F1200 ; print line
G1 X146 Y137.5 E2.9934 F4200 ; print line
G1 X176 Y137.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y142.5 F15000 ; move to start
M572 D0 S0.125 ; set K-factor
M117 K0.125 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y142.5 E1.796 F1200 ; print line
G1 X146 Y142.5 E2.9934 F4200 ; print line
G1 X176 Y142.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y147.5 F15000 ; move to start
M572 D0 S0.13 ; set K-factor
M117 K0.13 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y147.5 E1.796 F1200 ; print line
G1 X146 Y147.5 E2.9934 F4200 ; print line
G1 X176 Y147.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y152.5 F15000 ; move to start
M572 D0 S0.135 ; set K-factor
M117 K0.135 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y152.5 E1.796 F1200 ; print line
G1 X146 Y152.5 E2.9934 F4200 ; print line
G1 X176 Y152.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y157.5 F15000 ; move to start
M572 D0 S0.14 ; set K-factor
M117 K0.14 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y157.5 E1.796 F1200 ; print line
G1 X146 Y157.5 E2.9934 F4200 ; print line
G1 X176 Y157.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y162.5 F15000 ; move to start
M572 D0 S0.145 ; set K-factor
M117 K0.145 ; 
G1 E0.6 F1800 ; un-retract
G1 X96 Y162.5 E1.796 F1200 ; print line
G1 X146 Y162.5 E2.9934 F4200 ; print line
G1 X176 Y162.5 E1.796 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X66 Y167.5 F15000 ; move to start
;
; Mark the test area for reference
M117 K0
M572 D0 S0 ; Set K-factor 0
G1 X96 Y172.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X96 Y192.5 E1.1974 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 X146 Y172.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X146 Y192.5 E1.1974 F1200 ; print line
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X178 Y15.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y15.5 E0.1197 F1200 ; 0
G1 X180 Y17.5 E0.1197 F1200 ; 0
G1 X180 Y19.5 E0.1197 F1200 ; 0
G1 X178 Y19.5 E0.1197 F1200 ; 0
G1 X178 Y17.5 E0.1197 F1200 ; 0
G1 X178 Y15.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y25.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y25.5 E0.1197 F1200 ; 0
G1 X180 Y27.5 E0.1197 F1200 ; 0
G1 X180 Y29.5 E0.1197 F1200 ; 0
G1 X178 Y29.5 E0.1197 F1200 ; 0
G1 X178 Y27.5 E0.1197 F1200 ; 0
G1 X178 Y25.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y25.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y25.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y25.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y25.5 E0.1197 F1200 ; 0
G1 X184 Y27.5 E0.1197 F1200 ; 0
G1 X184 Y29.5 E0.1197 F1200 ; 0
G1 X182 Y29.5 E0.1197 F1200 ; 0
G1 X182 Y27.5 E0.1197 F1200 ; 0
G1 X182 Y25.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y25.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X185 Y27.5 E0.1197 F1200 ; 1
G1 X185 Y29.5 E0.1197 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y35.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y35.5 E0.1197 F1200 ; 0
G1 X180 Y37.5 E0.1197 F1200 ; 0
G1 X180 Y39.5 E0.1197 F1200 ; 0
G1 X178 Y39.5 E0.1197 F1200 ; 0
G1 X178 Y37.5 E0.1197 F1200 ; 0
G1 X178 Y35.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y35.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y35.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y35.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y35.5 E0.1197 F1200 ; 0
G1 X184 Y37.5 E0.1197 F1200 ; 0
G1 X184 Y39.5 E0.1197 F1200 ; 0
G1 X182 Y39.5 E0.1197 F1200 ; 0
G1 X182 Y37.5 E0.1197 F1200 ; 0
G1 X182 Y35.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y35.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X185 Y37.5 F15000 ; move to start
G1 X185 Y39.5 F15000 ; move to start
G1 X187 Y39.5 E0.1197 F1200 ; 2
G1 X187 Y37.5 E0.1197 F1200 ; 2
G1 X185 Y37.5 E0.1197 F1200 ; 2
G1 X185 Y35.5 E0.1197 F1200 ; 2
G1 X187 Y35.5 E0.1197 F1200 ; 2
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y45.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y45.5 E0.1197 F1200 ; 0
G1 X180 Y47.5 E0.1197 F1200 ; 0
G1 X180 Y49.5 E0.1197 F1200 ; 0
G1 X178 Y49.5 E0.1197 F1200 ; 0
G1 X178 Y47.5 E0.1197 F1200 ; 0
G1 X178 Y45.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y45.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y45.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y45.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y45.5 E0.1197 F1200 ; 0
G1 X184 Y47.5 E0.1197 F1200 ; 0
G1 X184 Y49.5 E0.1197 F1200 ; 0
G1 X182 Y49.5 E0.1197 F1200 ; 0
G1 X182 Y47.5 E0.1197 F1200 ; 0
G1 X182 Y45.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y45.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X185 Y47.5 F15000 ; move to start
G1 X185 Y49.5 F15000 ; move to start
G1 X187 Y49.5 E0.1197 F1200 ; 3
G1 X187 Y47.5 E0.1197 F1200 ; 3
G1 X187 Y45.5 E0.1197 F1200 ; 3
G1 X185 Y45.5 E0.1197 F1200 ; 3
G1 X185 Y47.5 F15000 ; move to start
G1 X187 Y47.5 E0.1197 F1200 ; 3
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y55.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y55.5 E0.1197 F1200 ; 0
G1 X180 Y57.5 E0.1197 F1200 ; 0
G1 X180 Y59.5 E0.1197 F1200 ; 0
G1 X178 Y59.5 E0.1197 F1200 ; 0
G1 X178 Y57.5 E0.1197 F1200 ; 0
G1 X178 Y55.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y55.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y55.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y55.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y55.5 E0.1197 F1200 ; 0
G1 X184 Y57.5 E0.1197 F1200 ; 0
G1 X184 Y59.5 E0.1197 F1200 ; 0
G1 X182 Y59.5 E0.1197 F1200 ; 0
G1 X182 Y57.5 E0.1197 F1200 ; 0
G1 X182 Y55.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y55.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X185 Y57.5 F15000 ; move to start
G1 X185 Y59.5 F15000 ; move to start
G1 X185 Y57.5 E0.1197 F1200 ; 4
G1 X187 Y57.5 E0.1197 F1200 ; 4
G1 X187 Y59.5 F15000 ; move to start
G1 X187 Y57.5 E0.1197 F1200 ; 4
G1 X187 Y55.5 E0.1197 F1200 ; 4
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y65.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y65.5 E0.1197 F1200 ; 0
G1 X180 Y67.5 E0.1197 F1200 ; 0
G1 X180 Y69.5 E0.1197 F1200 ; 0
G1 X178 Y69.5 E0.1197 F1200 ; 0
G1 X178 Y67.5 E0.1197 F1200 ; 0
G1 X178 Y65.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y65.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y65.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y65.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y65.5 E0.1197 F1200 ; 0
G1 X184 Y67.5 E0.1197 F1200 ; 0
G1 X184 Y69.5 E0.1197 F1200 ; 0
G1 X182 Y69.5 E0.1197 F1200 ; 0
G1 X182 Y67.5 E0.1197 F1200 ; 0
G1 X182 Y65.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y65.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X187 Y65.5 E0.1197 F1200 ; 5
G1 X187 Y67.5 E0.1197 F1200 ; 5
G1 X185 Y67.5 E0.1197 F1200 ; 5
G1 X185 Y69.5 E0.1197 F1200 ; 5
G1 X187 Y69.5 E0.1197 F1200 ; 5
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y75.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y75.5 E0.1197 F1200 ; 0
G1 X180 Y77.5 E0.1197 F1200 ; 0
G1 X180 Y79.5 E0.1197 F1200 ; 0
G1 X178 Y79.5 E0.1197 F1200 ; 0
G1 X178 Y77.5 E0.1197 F1200 ; 0
G1 X178 Y75.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y75.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y75.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y75.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y75.5 E0.1197 F1200 ; 0
G1 X184 Y77.5 E0.1197 F1200 ; 0
G1 X184 Y79.5 E0.1197 F1200 ; 0
G1 X182 Y79.5 E0.1197 F1200 ; 0
G1 X182 Y77.5 E0.1197 F1200 ; 0
G1 X182 Y75.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y75.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X185 Y77.5 F15000 ; move to start
G1 X187 Y77.5 E0.1197 F1200 ; 6
G1 X187 Y75.5 E0.1197 F1200 ; 6
G1 X185 Y75.5 E0.1197 F1200 ; 6
G1 X185 Y77.5 E0.1197 F1200 ; 6
G1 X185 Y79.5 E0.1197 F1200 ; 6
G1 X187 Y79.5 E0.1197 F1200 ; 6
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y85.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y85.5 E0.1197 F1200 ; 0
G1 X180 Y87.5 E0.1197 F1200 ; 0
G1 X180 Y89.5 E0.1197 F1200 ; 0
G1 X178 Y89.5 E0.1197 F1200 ; 0
G1 X178 Y87.5 E0.1197 F1200 ; 0
G1 X178 Y85.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y85.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y85.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y85.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y85.5 E0.1197 F1200 ; 0
G1 X184 Y87.5 E0.1197 F1200 ; 0
G1 X184 Y89.5 E0.1197 F1200 ; 0
G1 X182 Y89.5 E0.1197 F1200 ; 0
G1 X182 Y87.5 E0.1197 F1200 ; 0
G1 X182 Y85.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y85.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X185 Y87.5 F15000 ; move to start
G1 X185 Y89.5 F15000 ; move to start
G1 X187 Y89.5 E0.1197 F1200 ; 7
G1 X187 Y87.5 E0.1197 F1200 ; 7
G1 X187 Y85.5 E0.1197 F1200 ; 7
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y95.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y95.5 E0.1197 F1200 ; 0
G1 X180 Y97.5 E0.1197 F1200 ; 0
G1 X180 Y99.5 E0.1197 F1200 ; 0
G1 X178 Y99.5 E0.1197 F1200 ; 0
G1 X178 Y97.5 E0.1197 F1200 ; 0
G1 X178 Y95.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y95.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y95.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y95.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y95.5 E0.1197 F1200 ; 0
G1 X184 Y97.5 E0.1197 F1200 ; 0
G1 X184 Y99.5 E0.1197 F1200 ; 0
G1 X182 Y99.5 E0.1197 F1200 ; 0
G1 X182 Y97.5 E0.1197 F1200 ; 0
G1 X182 Y95.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y95.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X185 Y97.5 F15000 ; move to start
G1 X187 Y97.5 E0.1197 F1200 ; 8
G1 X187 Y95.5 E0.1197 F1200 ; 8
G1 X185 Y95.5 E0.1197 F1200 ; 8
G1 X185 Y97.5 E0.1197 F1200 ; 8
G1 X185 Y99.5 E0.1197 F1200 ; 8
G1 X187 Y99.5 E0.1197 F1200 ; 8
G1 X187 Y97.5 E0.1197 F1200 ; 8
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y105.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y105.5 E0.1197 F1200 ; 0
G1 X180 Y107.5 E0.1197 F1200 ; 0
G1 X180 Y109.5 E0.1197 F1200 ; 0
G1 X178 Y109.5 E0.1197 F1200 ; 0
G1 X178 Y107.5 E0.1197 F1200 ; 0
G1 X178 Y105.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y105.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y105.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y105.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X184 Y105.5 E0.1197 F1200 ; 0
G1 X184 Y107.5 E0.1197 F1200 ; 0
G1 X184 Y109.5 E0.1197 F1200 ; 0
G1 X182 Y109.5 E0.1197 F1200 ; 0
G1 X182 Y107.5 E0.1197 F1200 ; 0
G1 X182 Y105.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X185 Y105.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X187 Y105.5 E0.1197 F1200 ; 9
G1 X187 Y107.5 E0.1197 F1200 ; 9
G1 X185 Y107.5 E0.1197 F1200 ; 9
G1 X185 Y109.5 E0.1197 F1200 ; 9
G1 X187 Y109.5 E0.1197 F1200 ; 9
G1 X187 Y107.5 E0.1197 F1200 ; 9
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y115.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y115.5 E0.1197 F1200 ; 0
G1 X180 Y117.5 E0.1197 F1200 ; 0
G1 X180 Y119.5 E0.1197 F1200 ; 0
G1 X178 Y119.5 E0.1197 F1200 ; 0
G1 X178 Y117.5 E0.1197 F1200 ; 0
G1 X178 Y115.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y115.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y115.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y115.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X182 Y117.5 E0.1197 F1200 ; 1
G1 X182 Y119.5 E0.1197 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y125.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y125.5 E0.1197 F1200 ; 0
G1 X180 Y127.5 E0.1197 F1200 ; 0
G1 X180 Y129.5 E0.1197 F1200 ; 0
G1 X178 Y129.5 E0.1197 F1200 ; 0
G1 X178 Y127.5 E0.1197 F1200 ; 0
G1 X178 Y125.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y125.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y125.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y125.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X182 Y127.5 E0.1197 F1200 ; 1
G1 X182 Y129.5 E0.1197 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 X183 Y125.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X183 Y127.5 E0.1197 F1200 ; 1
G1 X183 Y129.5 E0.1197 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y135.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y135.5 E0.1197 F1200 ; 0
G1 X180 Y137.5 E0.1197 F1200 ; 0
G1 X180 Y139.5 E0.1197 F1200 ; 0
G1 X178 Y139.5 E0.1197 F1200 ; 0
G1 X178 Y137.5 E0.1197 F1200 ; 0
G1 X178 Y135.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y135.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y135.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y135.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X182 Y137.5 E0.1197 F1200 ; 1
G1 X182 Y139.5 E0.1197 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 X183 Y135.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X183 Y137.5 F15000 ; move to start
G1 X183 Y139.5 F15000 ; move to start
G1 X185 Y139.5 E0.1197 F1200 ; 2
G1 X185 Y137.5 E0.1197 F1200 ; 2
G1 X183 Y137.5 E0.1197 F1200 ; 2
G1 X183 Y135.5 E0.1197 F1200 ; 2
G1 X185 Y135.5 E0.1197 F1200 ; 2
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y145.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y145.5 E0.1197 F1200 ; 0
G1 X180 Y147.5 E0.1197 F1200 ; 0
G1 X180 Y149.5 E0.1197 F1200 ; 0
G1 X178 Y149.5 E0.1197 F1200 ; 0
G1 X178 Y147.5 E0.1197 F1200 ; 0
G1 X178 Y145.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y145.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y145.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y145.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X182 Y147.5 E0.1197 F1200 ; 1
G1 X182 Y149.5 E0.1197 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 X183 Y145.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X183 Y147.5 F15000 ; move to start
G1 X183 Y149.5 F15000 ; move to start
G1 X185 Y149.5 E0.1197 F1200 ; 3
G1 X185 Y147.5 E0.1197 F1200 ; 3
G1 X185 Y145.5 E0.1197 F1200 ; 3
G1 X183 Y145.5 E0.1197 F1200 ; 3
G1 X183 Y147.5 F15000 ; move to start
G1 X185 Y147.5 E0.1197 F1200 ; 3
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X178 Y155.5 F15000 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E0.6 F1800 ; un-retract
G1 X180 Y155.5 E0.1197 F1200 ; 0
G1 X180 Y157.5 E0.1197 F1200 ; 0
G1 X180 Y159.5 E0.1197 F1200 ; 0
G1 X178 Y159.5 E0.1197 F1200 ; 0
G1 X178 Y157.5 E0.1197 F1200 ; 0
G1 X178 Y155.5 E0.1197 F1200 ; 0
G1 E-0.6 F1800 ; retract
G1 X181 Y155.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X181 Y155.9 E0.0239 F1200 ; dot
G1 E-0.6 F1800 ; retract
G1 X182 Y155.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X182 Y157.5 E0.1197 F1200 ; 1
G1 X182 Y159.5 E0.1197 F1200 ; 1
G1 E-0.6 F1800 ; retract
G1 X183 Y155.5 F15000 ; move to start
G1 E0.6 F1800 ; un-retract
G1 X183 Y157.5 F15000 ; move to start
G1 X183 Y159.5 F15000 ; move to start
G1 X183 Y157.5 E0.1197 F1200 ; 4
G1 X185 Y157.5 E0.1197 F1200 ; 4
G1 X185 Y159.5 F15000 ; move to start
G1 X185 Y157.5 E0.1197 F1200 ; 4
G1 X185 Y155.5 E0.1197 F1200 ; 4
G1 E-0.6 F1800 ; retract
G1 Z0.3 F1200 ; zHop
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