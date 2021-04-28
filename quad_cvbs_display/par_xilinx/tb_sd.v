`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:09:50 10/14/2019
// Design Name:   sd_source
// Module Name:   D:/AV6150/AV6150_CD/02_demo/15_quad_cvbs_display/par_xilinx/tb_sd.v
// Project Name:  top
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sd_source
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_sd;

	// Inputs
	reg [7:0] MODE_SELECT_8B;
	reg clk_in;

	// Outputs
	wire o_itu_656_clk;
	wire [7:0] o_itu_656_data_8b;

	// Instantiate the Unit Under Test (UUT)
	sd_source uut (
		.MODE_SELECT_8B(MODE_SELECT_8B), 
		.clk_in(clk_in), 
		.o_itu_656_clk(o_itu_656_clk), 
		.o_itu_656_data_8b(o_itu_656_data_8b)
	);

	initial begin
		// Initialize Inputs
		MODE_SELECT_8B = 0;
		clk_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        MODE_SELECT_8B = 8'd1;
		#400;
        MODE_SELECT_8B = 8'd2;
		#800;
        MODE_SELECT_8B = 8'd3;
		#600;
        MODE_SELECT_8B = 8'd4;
		#400;
        MODE_SELECT_8B = 8'd5;
		// Add stimulus here

	end
  always # 20 clk_in = ~ clk_in;    
endmodule

