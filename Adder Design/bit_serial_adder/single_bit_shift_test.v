`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:04:28 08/16/2018
// Design Name:   sinlge_bit_shift
// Module Name:   /home/aion/Desktop/bit_serial_adder/single_bit_shift_test.v
// Project Name:  bit_serial_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sinlge_bit_shift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module single_bit_shift_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	sinlge_bit_shift uut (
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		#20;
		rst = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		rst = 1;
		#20;
		rst = 0;
		#20;
		
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
		
		clk = 1;
		#20;
		clk = 0;
		#20;
	end
      
endmodule

