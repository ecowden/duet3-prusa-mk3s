; filaments/Prusament PETG/config.g
M207 S0.6 F1800 Z0.4                                      ; retraction at 0.6mm at 30mm/sec with 0.4mm Z-hop
M307 H1 B0 S1.00 A314.3 C87.8 D2.3 V24.4                  ; hot end PID tune at 215C with 100% fan
M572 D0 S0.095   		                                  ; pressure advance, determined experimentally
echo "Configured Prusament PETG"                          ; log configuration
