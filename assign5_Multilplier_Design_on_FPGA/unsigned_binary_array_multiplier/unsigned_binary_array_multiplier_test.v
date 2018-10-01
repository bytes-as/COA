`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:26:23 08/25/2018
// Design Name:   unsigned_binary_array_multiplier
// Module Name:   /home/aion/Documents/coa_lab/Assign 5 Multiplier/unsigned_binary_array_multiplier/unsigned_binary_array_multiplier_test.v
// Project Name:  unsigned_binary_array_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: unsigned_binary_array_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module unsigned_binary_array_multiplier_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] mul;

	// Instantiate the Unit Under Test (UUT)
	unsigned_binary_array_multiplier uut (
		.a(a), 
		.b(b), 
		.mul(mul)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'b11100101;				//	a = 11100101	||	229
		b = 8'b00010101;				//	b = 00010101	||	21
		#100;				//	a*b = 0001001011001001		||	4809
		
		a = 8'b11010101;				//	a = 11010101	||	213
		b = 8'b00000010;				//	b = 00000010	||	2
		#100;				//	a*b = 0000000110101010		||	426
		
		a = 8'b11000000;				//	a = 11000000	||	192
		b = 8'b00111111;				//	b = 00111111	||	63
		#100;				//	a*b = 0010111101000000		||	12096
		
		a = 8'b00110111;				//	a = 00110111	||	55
		b = 8'b10000000;				//	b = 10000000	||	128
		#100;				//	a*b = 0001101110000000		||	7040
		
		a = 8'b11110000;				//	a = 11110000	||	240
		b = 8'b11001100;				//	b = 11001100	||	204
		#100;				//	a*b = 0000000000000000		||	48960
		
	end
      
endmodule

