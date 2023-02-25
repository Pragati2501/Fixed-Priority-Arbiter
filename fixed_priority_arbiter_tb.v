`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:37:33 02/25/2023
// Design Name:   fixed_priority_arbiter
// Module Name:   C:/Users/DELL/Documents/newbie/fixed_priority_arbiter/fixed_priority_arbiter_tb.v
// Project Name:  fixed_priority_arbiter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fixed_priority_arbiter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fixed_priority_arbiter_tb;

	// Inputs
	reg [3:0] REQ;
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] GNT;

	// Instantiate the Unit Under Test (UUT)
	fixed_priority_arbiter uut (
		.GNT(GNT), 
		.REQ(REQ), 
		.clk(clk), 
		.reset(reset)
	);
	initial
	clk = 0;
	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		
		reset = 0;
		#5 reset = 1;
		repeat(20)
		begin
		#6 REQ<=$random();
		end
		// Wait 100 ns for global reset to finish
		#100 $finish();
		end
		initial begin
		$monitor("REQ = %b, GNT = %b, reset = %b", REQ,GNT,reset);
		// Add stimulus here

	end
      
endmodule

