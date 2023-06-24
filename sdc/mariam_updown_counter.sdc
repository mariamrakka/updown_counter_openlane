###############################################################################
# Created by write_sdc
# Thu Jun 22 00:02:14 2023
###############################################################################
current_design mariam_updown_counter
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 25.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_clock_latency -source -min 4.5000 [get_clocks {clk}]
set_clock_latency -source -max 6.0000 [get_clocks {clk}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.1400 [get_ports {io_oeb[3]}]
set_load -pin_load 0.1400 [get_ports {io_oeb[2]}]
set_load -pin_load 0.1400 [get_ports {io_oeb[1]}]
set_load -pin_load 0.1400 [get_ports {io_oeb[0]}]
set_input_transition 0.6000 [get_ports {clk}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
