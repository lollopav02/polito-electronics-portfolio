##	+----------------------------------------------------------------
##	|		 Synthesis and Optimization of Digital Systems			|
##	|				Politecnico di Torino - TO - Italy				|
##	|						DAUIN - EDA GROUP						|
##	+----------------------------------------------------------------
##	|	author: Valentino Peluso									|
##	|	mail:	valentino.peluso@polito.it							|
##	|	title:	pt_analysis.tcl										|
##	+----------------------------------------------------------------
##	| 	Copyright 2026 DAUIN - EDA GROUP							|
##	+----------------------------------------------------------------

######################################################################
##
## SPECIFY LIBRARIES
##
######################################################################

# SOURCE SETUP FILE
source "./tech/STcmos65/synopsys_pt.setup"

# DEFINE OPTIONS
set report_default_significant_digits 6
set power_enable_analysis true

# SUPPRESS WARNING MESSAGES
suppress_message RC-004
suppress_message PTE-003
suppress_message UID-401
suppress_message ENV-003
suppress_message UITE-489
suppress_message CMD-041
suppress_message PLIB-166
suppress_message PLIB-167
suppress_message PTE-139
suppress_message NED-045

######################################################################
##
## READ DESIGN
##
######################################################################

# DEFINE CIRCUITS
set blockName sha256_core

# DEFINE INPUT FILES
set dir "./saved/${blockName}/synthesis"
set in_verilog_filename "${dir}/${blockName}_postsyn.v"
set in_sdc_filename "${dir}/${blockName}_postsyn.sdc"

# READ
read_verilog $in_verilog_filename
link_design $blockName
read_sdc $in_sdc_filename

set_ideal_network clk
set_ideal_network reset_n

update_timing -full

######################################################################
##
## SWA POWER BACK-ANNOTATION
##
######################################################################

set vcd_file "./saved/${blockName}/simulation/${blockName}.vcd"
read_vcd -strip_path "tb_sha256_core/dut" $vcd_file
update_power

######################################################################
##
## REPORT METRICS
##
######################################################################

# Clock period
set clk_period [get_attribute [get_clocks clk] period]
echo "Clock Period: $clk_period ns"

# Area
set total_area [get_attribute [get_designs $blockName] area]
echo "Area: $total_area um2"

# Slack (worst setup slack)
set wns [get_attribute [get_timing_paths -max_paths 1 -delay_type max] slack]
echo "Slack: $wns ns"

# Power (requires VCD back-annotation above)
set leakage [get_attribute [get_designs $blockName] leakage_power]
echo "Leakage Power: $leakage mW"

set dynamic [get_attribute [get_designs $blockName] dynamic_power]
echo "Dynamic Power: $dynamic mW"

set gates [get_cells -hierarchical -filter "is_hierarchical == false"]
set total [sizeof_collection $gates]
set lvt_count 0
set svt_count 0
set hvt_count 0

foreach_in_collection cell $gates {
    set cell_name [get_attribute $cell ref_name]
    if {[string match "HS65_LH*" $cell_name]} {
        incr hvt_count
    } elseif {[string match "HS65_LL*" $cell_name]} {
        incr lvt_count
    } elseif {[string match "HS65_LS*" $cell_name]} {
        incr svt_count
    }
}

echo "LVT cells: [expr {100.0 * $lvt_count / $total}] %"
echo "SVT cells: [expr {100.0 * $svt_count / $total}] %"
echo "HVT cells: [expr {100.0 * $hvt_count / $total}] %"

#exit
