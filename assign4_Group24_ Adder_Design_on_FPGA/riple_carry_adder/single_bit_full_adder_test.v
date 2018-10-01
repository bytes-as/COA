`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:36:23 08/18/2018
// Design Name:   single_bit_full_adder
// Module Name:   /home/aion/Documents/riple_carry_adder/single_bit_full_adder_test.v
// Project Name:  riple_carry_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: single_bit_full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module single_bit_full_adder_test;

	// Inputs
	reg a;
	reg b;
	reg cy_in;

	// Outputs
	wire sum;
	wire cy_out;

	// Instantiate the Unit Under Test (UUT)
	single_bit_full_adder uut (
		.a(a), 
		.b(b), 
		.cy_in(cy_in), 
		.sum(sum), 
		.cy_out(cy_out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cy_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 1;
		b = 0;
		cy_in = 0;
		#100;
		
		a = 0;
		b = 1;
		cy_in = 0;
		#100;
		
		a = 1;
		b = 1;
		cy_in = 0;
		#100;
		
		a = 1;
		b = 0;
		cy_in = 1;
		#100;
		
		a = 0;
		b = 1;
		cy_in = 1;
		#100;
		
		a = 1;
		b = 1;
		cy_in = 1;
	end
      
endmodule

