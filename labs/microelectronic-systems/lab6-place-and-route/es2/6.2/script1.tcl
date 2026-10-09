# 1. Configuring
source ADDER.globals
init_design

# 2. Structuring the Floorplan (Aspect ratio 1.0, Util 0.6, Margins 5um)
floorPlan -r 1.0 0.6 5 5 5 5

# 3. Inserting power Rings (M9 top/bottom, M10 left/right, width/spacing/offset 0.8)
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top M9 bottom M9 left M10 right M10} -width 0.8 -spacing 0.8 -offset 0.8

# 4. Inserting stripes (M10, width/spacing 0.8, distance 20, start 15)
addStripe -nets {vdd gnd} -layer M10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15

# 5. Standard Cell Power routing
sroute -nets {vdd gnd}

# 6. Placement (Max routing layer 6)
setPlaceMode -fp false -maxRouteLayer 6
placeDesign

# 8. Pre Clock-Tree-Synthesis (CTS) optimization
setDelayCalMode -siAware false
timeDesign -preCTS
optDesign -preCTS



# 11. Place filler
addFiller -prefix FILL 

# 12. Routing (Max routing layer 6)
setNanoRouteMode -quiet -routeTopRoutingLayer 6
routeDesign -globalDetail
timeDesign -postRoute

# 13. Post routing optimization
optDesign -postRoute
optDesign -postRoute -hold

# 14. Parasitics Extraction
setExtractRCMode -engine postRoute -effortLevel low
extractRC
rcOut -spef ADDER.spef

# 15. Verifica e Salvataggio di TUTTI i deliverable richiesti
verifyConnectivity -type all
report_power > power.txt
report_area > gate_count.txt
report_timing > delay_report.txt
saveNetlist adder_routed.v
write_sdf adder_routed.sdf
saveDesign ADDER_routed.enc

# 16. USCITA DA INNOVUS (Fondamentale per sbloccare lo script Bash)
exit