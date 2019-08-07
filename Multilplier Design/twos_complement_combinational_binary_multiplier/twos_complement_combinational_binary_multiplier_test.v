`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:32:05 08/27/2018
// Design Name:   twos_complement_combinational_binary_multiplier
// Module Name:   /home/aion/Documents/coa_lab/Assign 5 Multiplier/twos_complement_combinational_binary_multiplier/twos_complement_combinational_binary_multiplier_test.v
// Project Name:  twos_complement_combinational_binary_multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: twos_complement_combinational_binary_multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twos_complement_combinational_binary_multiplier_test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	twos_complement_combinational_binary_multiplier uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 8'b11100101;				//	a = 11100101	||	229
		b = 8'b10010101;				//	b = 10010101	||	-21
		#100;				//	a*b = 1001001011001001		||	-4809
		
		a = 8'b10000101;				// a = -5
		b = 8'b10000100;				//	b = -4
		#100;
		a = 8'b10000101;				// a = -5
		b = 8'b00000100;				//	b = 4
		#100;
		a = 8'b00000101;				// a = 5
		b = 8'b00000100;				//	b = 4

	end
      
endmodule

