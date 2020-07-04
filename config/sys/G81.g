; G81.g
; Go to [0,0,0] in the fastest way possible
if move.axes[0].machinePosition != 0 && move.axes[1].machinePosition != 0
  if move.axes[2].machinePosition < 5
    G1 Z5
  G1 X0 Y0 F99999
G1 Z0
