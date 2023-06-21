// FPGA projects using Verilog/ VHDL
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog code for up-down counter
module mariam_updown_counter(
`ifdef USE_POWER_PINS
	inout vccd1,	// User area 1 1.8V power
	inout vssd1,	// User area 1 digital ground
`endif
input clk, reset,up_down, output[3:0]  counter, output wire [3:0]io_oeb);
reg [3:0] counter_up_down;
assign io_oeb= 4'b0000;

// down counter
always @(posedge clk or posedge reset)
begin
	if(reset)
 		counter_up_down <= 4'h0;
	else if(~up_down)
 		counter_up_down <= counter_up_down + 4'd1;
	else
 		counter_up_down <= counter_up_down - 4'd1;
end 
assign counter = counter_up_down;
endmodule


