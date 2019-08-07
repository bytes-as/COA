`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:49:36 08/30/2018
// Design Name:   multiple_of_three_detector
// Module Name:   /home/aion/Documents/coa_lab/Assign 6 Finite State Machine/multiple_of_three_detector_FSM/multiple_of_three_detector_test.v
// Project Name:  multiple_of_three_detector_FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiple_of_three_detector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiple_of_three_detector_test;

	// Inputs
	reg clk;
	reg rst;
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	multiple_of_three_detector uut (
		.clk(clk), 
		.rst(rst), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		rst = 1;
		#20;
		rst = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 1;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		in = 0;
		clk = 1;
		#20;
		clk = 0;
		#100;
		
	end
      
endmodule

