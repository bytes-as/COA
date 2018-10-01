`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:40:50 08/25/2018
// Design Name:   single_bit_full_adder
// Module Name:   /home/aion/Documents/coa_lab/Assign 5 Multiplier/unsigned_binary_array_multiplier/single_bit_full_adder_test.v
// Project Name:  unsigned_binary_array_multiplier
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
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	single_bit_full_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 0;
		b = 0;
		cin = 0;
		#100;
		
		a = 1;
		b = 0;
		cin = 0;
		#100;
		
		a = 0;
		b = 1;
		cin = 0;
		#100;
		
		a = 1;
		b = 1;
		cin = 0;
		#100;
		
		a = 0;
		b = 0;
		cin = 1;
		#100;
		
		a = 1;
		b = 0;
		cin = 1;
		#100;
		
		a = 0;
		b = 1;
		cin = 1;
		#100;
		
		a = 1;
		b = 1;
		cin = 1;
		#100;
		
	end
      
endmodule

