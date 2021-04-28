`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:25:33 07/21/2020
// Design Name:   bt656_decode
// Module Name:   D:/AV6150/AV6150_CD/02_demo/15_quad_cvbs_display/par_xilinx/tb_bt656.v
// Project Name:  top
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bt656_decode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bt656;

	// Inputs
	reg clk;
	reg  [7:0] bt656_in;

	// Outputs
	wire [15:0] yc_data_out;
	wire vs;
	wire hs;
	wire field;
	wire de;
	wire is_pal;

	// Instantiate the Unit Under Test (UUT)
	bt656_decode uut (
		.clk(clk), 
		.bt656_in(bt656_in), 
		.yc_data_out(yc_data_out), 
		.vs(vs), 
		.hs(hs), 
		.field(field), 
		.de(de), 
		.is_pal(is_pal)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		bt656_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
 
 initial begin
	forever # (500/27)
	 clk = ~clk;
 end
 
wire  [7:0]o_itu_656_data_8b;
 	sd_source sd (
		.MODE_SELECT_8B(8'd0), 
		.clk_in(clk), 
		.o_itu_656_clk(), 
		.o_itu_656_data_8b(o_itu_656_data_8b)
	);
 
 always @ (posedge clk)
 begin
	bt656_in<=o_itu_656_data_8b;
 end
endmodule

