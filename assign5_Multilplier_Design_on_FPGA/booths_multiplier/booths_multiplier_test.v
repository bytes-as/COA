`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:45:36 08/29/2018
// Design Name:   booths_multiplier
// Module Name:   /home/aion/Documents/coa_lab/Assign 5 Multiplier/booths_multiplier/booths_multiplier_test.v
// Project Name:  booths_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: booths_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module booths_multiplier_test;

	// Inputs
	reg [7:0] mc;
	reg [7:0] mp;
	reg clk;
	reg start;

	// Outputs
	wire [15:0] out;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	booths_multiplier uut (
		.out(out), 
		.busy(busy), 
		.mc(mc), 
		.mp(mp), 
		.clk(clk), 
		.start(start)
	);

	initial begin
		// Initialize Inputs
		mc = 0;
		mp = 0;
		clk = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		start = 1;
		#100;
		mc = 8'b00000101;
		mp = 8'b00000100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		
				clk = 1;
		#100;
		clk = 0;
		#100;
		
				clk = 1;
		#100;
		clk = 0;
		#100;
		
				clk = 1;
		#100;
		clk = 0;
		#100;
		
				clk = 1;
		#100;
		clk = 0;
		#100;
		
				clk = 1;
		#100;
		clk = 0;
		#100;
		
				clk = 1;
		#100;
		clk = 0;
		#100;
		
				clk = 1;
		#100;		
	end
      
endmodule

