`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:48:11 07/22/2020
// Design Name:   vout_display_timing
// Module Name:   D:/AV6150/AV6150_CD/02_demo/15_quad_cvbs_display/par_xilinx/tb_vesa.v
// Project Name:  top
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vout_display_timing
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_vesa;

	// Inputs
	reg rst_n;
	reg dp_clk;
	reg [11:0] h_fp;
	reg [11:0] h_sync;
	reg [11:0] h_bp;
	reg [11:0] h_active;
	reg [11:0] h_total;
	reg [11:0] v_fp;
	reg [11:0] v_sync;
	reg [11:0] v_bp;
	reg [11:0] v_active;
	reg [11:0] v_total;

	// Outputs
	wire hs;
	wire vs;
	wire de;

	// Instantiate the Unit Under Test (UUT)
	vout_display_timing uut (
		.rst_n(rst_n), 
		.dp_clk(dp_clk), 
		.h_fp(h_fp), 
		.h_sync(h_sync), 
		.h_bp(h_bp), 
		.h_active(h_active), 
		.h_total(h_total), 
		.v_fp(v_fp), 
		.v_sync(v_sync), 
		.v_bp(v_bp), 
		.v_active(v_active), 
		.v_total(v_total), 
		.hs(hs), 
		.vs(vs), 
		.de(de)
	);

	initial begin
		// Initialize Inputs
		rst_n = 0;
		dp_clk = 0;
		h_fp = 0;
		h_sync = 0;
		h_bp = 0;
		h_active = 0;
		h_total = 0;
		v_fp = 0;
		v_sync = 0;
		v_bp = 0;
		v_active = 0;
		v_total = 0;

		// Wait 100 ns for global reset to finish
		#100;
        rst_n = 1;
		h_fp = 16'd88;
		h_sync = 16'd44;
		h_bp = 16'd148;
		h_active = 16'd1920;
		h_total = h_active + h_fp + h_sync + h_bp;
		v_fp = 16'd4;
		v_sync = 16'd5;
		v_bp = 16'd36;
		v_active = 16'd1080;
		v_total = v_active + v_fp + v_sync + v_bp;
		// Add stimulus here

	end
 
initial begin
	forever # (500/50)
	dp_clk <= ~ dp_clk;
end 


endmodule

