`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:40:29 08/25/2018
// Design Name:   eight_bit_carry_ripple_adder
// Module Name:   /home/aion/Documents/coa_lab/Assign 5 Multiplier/unsigned_binary_array_multiplier/eight_bit_carry_ripple_adder_test.v
// Project Name:  unsigned_binary_array_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_carry_ripple_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_carry_ripple_adder_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire [7:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_carry_ripple_adder uut (
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
		a = 8'b11100101;				//	a = 11100101	||	229
		b = 8'b00010101;				//	b = 00010101	||	21
		cin = 0;
		#100;							//	a+b = 011111010		||	250
		
		a = 8'b11010101;				//	a = 11010101	||	213
		b = 8'b00000010;				//	b = 00000010	||	2
		cin = 1;
		#100;							//	a+b = 011011000	||	216
		
		a = 8'b11000000;				//	a = 11000000	||	192
		b = 8'b00111111;				//	b = 00111111	||	63
		cin = 0;
		#100;							//	a+b =	011111111		||	255
		
		a = 8'b00110111;				//	a = 00110111	||	55
		b = 8'b10000000;				//	b = 10000000	||	128
		cin = 1;
		#100;							//	a+b = 010111000		||	184
	end
      
endmodule

